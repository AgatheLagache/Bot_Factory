# Bot_Factory

```sh
git clone https://github.com/AgatheLagache/Bot_Factory
cd Bot_Factory
git submodule init
git submodule update
```

Pour la vision : 
1. Lancer poppy torso ou poppy ergo dans gazebo avec :
```sh
roslaunch poppy_torso_gazebo poppy_torso_gazebo_trajectory.launch
```
2. OPTIONNEL - Lancer la visualisation de la caméra :
```sh
rosrun rqt_image_view rqt_image_view
```
3. Pour lancer les cubes :
```sh
roslaunch production_chain spawn_figurines.launch
```
4. Lancer le node vision avec :
```sh
cd Bot_Factory/src/production_chain/scripts/
python3 vision.py torso
```
NOTE : Il faut préciser torso ou ergo en paramètre en fonction du robot en service

5. On appelle le service de détection de couleurs avec :
```sh
rosservice call /poppy_torso/figurine_detection
```
6. On appelle le service de détection de formes avec : 
```sh
rosservice call /poppy_torso/parts_detection
```

Lancer simulation
```sh
roslaunch production_chain production_chain.launch
```

MoveIt Ergo
```sh
roslaunch poppy_ergo_jr_moveit_config start_moveit.launch 
```

MoveIt Torso
```sh
roslaunch production_chain 
```
