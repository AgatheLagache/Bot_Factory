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

        # Créaction d'un service (on utilise le srv standard Trigger)
        self.service_vision = rospy.Service(
            root + '/figurine_detection', Trigger, self.handle_figurine)

    def find_figurine(self,img):
        # ICI le traitement OpenCV
        img_HSV = cv.cvtColor(img, cv.COLOR_BGR2HSV)
        img_seuil = cv.inRange(img_HSV, (100, 200, 50), (143, 255, 100)) #BLEU
        cv.imwrite("seuil.png", img_seuil)
        contours, hierarchy = cv.findContours(img_seuil, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
        
        cv.drawContours(img, contours, 0, (0,255,0), 3)
        cv.imwrite("contours.png", img)
        # retour du résultat
        resp = TriggerResponse()
        # Si pas de figurine
        if len(contours) <= 0:
        	resp.success = False
        # Sinon
        else:
        	resp.success = True
        	resp.message="COULEUR"
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
