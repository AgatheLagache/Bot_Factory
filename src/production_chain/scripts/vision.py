import rospy
from sensor_msgs.msg import Image
from std_srvs.srv import Trigger, TriggerResponse
from cv_bridge import CvBridge
import cv2 as cv
import numpy as np
import sys


class NodeVision(object):
    def __init__(self):
        # Params
        #rospy.loginfo(sys.argv[1])
        self.image = None
        self.debug_img = None
        self.br = CvBridge() #pour la conversion entre les imags OpenCV et les images ROS
        # Node cycle rate (in Hz).
        self.loop_rate = rospy.Rate(10)
        root = '/poppy_torso'
        path = '/camera_torso'
        
        if sys.argv[1] == 'torso':
        	root = '/poppy_torso'
        	path = '/camera_torso'
        elif sys.argv[1] == 'ergo':
        	root = '/poppy_ergo'
        	path = '/camera_ergo'
        # Pour publier des images pour le debuggage
        self.img_pub = rospy.Publisher(
            root + path + '/debug_img', Image, queue_size=1)
	
        # Pour récupérer les images du robot simulé
        rospy.Subscriber(
            root + path + '/image_raw', Image, self.callback)

        # Création d'un service pour trouver les destinations des figurines
        self.service_vision = rospy.Service(
            root + '/figurine_detection', Trigger, self.handle_figurine)
        
        # Création d'un service pour trouver les parties des figurines
        self.service_vision = rospy.Service(
            root + '/parts_detection', Trigger, self.stack_parts)
            
        # Création d'un service pour valider la figurine montée
        self.service_vision = rospy.Service(
            root + '/figurine_check', Trigger, self.validate_figurine)
            
        # Création d'un service pour sauvegarder les références pour les pièces
        self.service_vision = rospy.Service(
            root + '/calibrate_parts', Trigger, self.save_parts_reference)
            
        # Création d'un service pour sauvegarder la référence pour la figurine conforme
        self.service_vision = rospy.Service(
            root + '/calibrate_figurine', Trigger, self.save_figurine_reference)

    def find_figurine(self,img):
    	#tableau de tableau format : ["pays", hue, saturation, value]
    	countries = [['JAPON', 32, 255, 145],['ANGLETERRE', 149, 255, 102],['FRANCE', 59, 255, 128],['ALLEMAGNE', 0, 255, 128]]
    	#Méthode trouvant les pays des pièces à expédier en fonction des zones
    	#Retourne un résultat du type : "PAYS,ZONE;PAYS,ZONE;PAYS,ZONE;PAYS,ZONE;"
    	#Lorsque qu'une zone est nulle ou qu'un pays n'est pas représenté, ZONE=none
    	       
    	img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
    	area = 'none'
    	resp = TriggerResponse()
    	resp.success = False
    	for country in countries:
    		img_seuil = cv.inRange(img_HSV, (country[1]-20, country[2]-50, country[3]-50), (country[1]+10, country[2]+10, country[3]+10))
    		contours, hierarchy = cv.findContours(img_seuil, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    		
    		if len(contours) <= 0:
    			area = 'none'
    			resp.message += str(country[0])+','+str(area)+';'
    		else:
    			resp.success = True
    			for c in contours:
    				(x, y, w, h) = cv.boundingRect(c)
    				minRect = cv.minAreaRect(c)
    				M = cv.moments(c)
    				cX = int(M["m10"] / M["m00"])	
    				if cX <= 267:
    					area = 1
    				elif cX >= 268 and cX <= 535:
    					area = 2
    				elif cX >= 536:
    					area = 3
    				resp.message += str(country[0])+','+str(area)+';'
    	return resp	

    def find_parts(self,img):
    	#tableau de tableau format : ["pays", hue, saturation, value]
    	countries = [['JAPON', 32, 255, 145],['ANGLETERRE', 149, 255, 102],['FRANCE', 59, 255, 128],['ALLEMAGNE', 0, 255, 128]]
    	#tableau de tableau format : ["n° zone", "pièce", x_min zone, x_max zone]
    	areas = [["z1","HEAD", 0, 267], ["z2","CHEST", 268, 535], ["z3","LEGS", 536, 800]]
    	#Méthode comparant la vision caméra avec des images des différentes pièces des figurines
    	resp = TriggerResponse()
    	resp.success = False
    	img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
    	
    	for country in countries:
    		img_seuil = cv.inRange(img_HSV, (country[1]-20, country[2]-50, country[3]-50), (country[1]+10, country[2]+10, country[3]+10))
    		for area in areas:
    			area_visu = img_seuil[0:600, area[2]:area[3]]
    			contours, hierarchy = cv.findContours(area_visu, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    			if len(contours) > 0:
    				cnt = contours[0]
    				reference_base = cv.imread("REFERENCE/"+area[0]+".png", cv.IMREAD_GRAYSCALE)
    				contours_ref, hierarchy_ref = cv.findContours(reference_base, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    				cnt_ref = contours_ref[0]
    				ret = cv.matchShapes(cnt,cnt_ref,1,0.0)
    				if ret <= 0.01:
    					resp.success = True
    					resp.message += str(area[1])+','+str(area[0])+';'
    	return resp
    	
    def check_figurine(self, img):
    	#tableau de tableau format : ["pays", hue, saturation, value]
    	countries = [['JAPON', 32, 255, 145],['ANGLETERRE', 149, 255, 102],['FRANCE', 59, 255, 128],['ALLEMAGNE', 0, 255, 128]]
    	#Méthode comparant la vision caméra avec une image de la figurine montée
    	resp = TriggerResponse()
    	resp.success = False
    	img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
    	
    	for country in countries:
    		img_seuil = cv.inRange(img_HSV, (country[1]-20, country[2]-50, country[3]-50), (country[1]+10, country[2]+10, country[3]+10))
    		contours, hierarchy = cv.findContours(img_seuil, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    		if len(contours) > 0:
    			cnt = contours[0]
    			reference_base = cv.imread("REFERENCE/figurine.png", cv.IMREAD_GRAYSCALE)
    			contours_ref, hierarchy_ref = cv.findContours(reference_base, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    			cnt_ref = contours_ref[0]
    			ret = cv.matchShapes(cnt,cnt_ref,1,0.0)
    			if ret <= 0.05:
    				resp.success = True
    				resp.message = "OK"
    	return resp
    	

    def handle_figurine(self, req):
        #Méthode callback qui sera éxécutée à chaque appel du service

        # retour du résultat
        resp = TriggerResponse()
        resp.success = False

        # uniquement si l'image existe
        if self.image is not None:
            imgtmp = self.image.copy()
            # on appelle la méthode de traitement d'image
            resp = self.find_figurine(imgtmp)

        return resp
        
    def stack_parts(self, req):
        #Méthode callback qui sera éxécutée à chaque appel du service

        # retour du résultat
        resp = TriggerResponse()
        resp.success = False

        # uniquement si l'image existe
        if self.image is not None:
            imgtmp = self.image.copy()
            # on appelle la méthode de traitement d'image
            resp = self.find_parts(imgtmp)
        return resp
        
    def validate_figurine(self, req):
         resp = TriggerResponse()
         resp.success = False
         if self.image is not None:
         	imgtmp = self.image.copy()
         	# on appelle la méthode de traitement d'image
         	resp = self.check_figurine(imgtmp)
         return resp
            
    def save_parts_reference(self, req):
    	areas = [["z1","HEAD", 0, 267], ["z2","CHEST", 268, 535], ["z3","LEGS", 536, 800]]
    	resp = TriggerResponse()
    	resp.success = False
    	if self.image is not None:
    		img = self.image.copy()
    		img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
    		resp.success = True
    		img_seuil = cv.inRange(img_HSV, (39, 205, 78), (69, 255, 138))
    		for area in areas:
    			area_visu = img_seuil[0:600, area[2]:area[3]]
    			cv.imwrite("REFERENCE/"+area[0]+".png", img_seuil)
    			resp.message += area[0] + " "
    		resp.message += "reference pictures saved."
    	return resp
    	
    def save_figurine_reference(self, req):
    	resp = TriggerResponse()
    	resp.success = False
    	if self.image is not None:
    		img = self.image.copy()
    		img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
    		img_seuil = cv.inRange(img_HSV, (39, 205, 78), (69, 255, 138))
    		cv.imwrite("REFERENCE/figurine.png", img_seuil)
    		resp.success = True
    		resp.message = "Reference picture saved."
    	return resp

    def callback(self, msg):
        #méthode callback qui sera éxécutée à chaque reception d'un message
        self.image = self.br.imgmsg_to_cv2(msg, "bgr8") #On converti l'image ROS en une image OpenCV

    def start(self):
        rospy.loginfo("Démarrage du node vision")

        while not rospy.is_shutdown():

            if self.image is not None:
            	# éventuellement, publication d'une image de débug, ici une copie de l'image d'origine
            	self.debug_img = self.image.copy()
            	self.img_pub.publish(self.br.cv2_to_imgmsg(self.debug_img, "bgr8")) #On converti l'image OpenCV en une image ROS
            self.loop_rate.sleep()


if __name__ == '__main__':
    rospy.init_node("Vision")
    vision = NodeVision()
    vision.start()
