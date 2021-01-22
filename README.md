# Bot_Factory

```sh
git clone https://github.com/AgatheLagache/Bot_Factory
cd Bot_Factory
git submodule init
git submodule update
```

roslaunch production_chain production_line.launch ergo:=false torso:=true
roslaunch production_chain torso_moveit.launch

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


Lancer simulation (si votre Bot_Factory est dans home, sinon adapter le path)
Adapter les paramètres à true ou false pour lancer l'un ou l'autre
```sh
export GAZEBO_MODEL_PATH="${GAZEBO_MODEL_PATH}${HOME}/Bot_Factory/src/production_chain/models/:"
roslaunch production_chain production_chain.launch ergo:=true torso:=false
```

MoveIt Ergo
```sh
roslaunch poppy_ergo_jr_moveit_config start_moveit.launch 
```

MoveIt Torso
```sh
roslaunch production_chain torso_moveit.launch
```


## Lancer l'ergo et le torso
dans une première console :
``sh
roslaunch production torso.launch
``

Une fois le torso lancé, dans une deuxième console :
``sh
roslaunch production ergo_jr.launch
``

