# Bot_Factory

```sh
git clone https://github.com/AgatheLagache/Bot_Factory
cd Bot_Factory
git submodule init
git submodule update
```

Setup workspace
(go to the root of the Bot_Factory directory) 

```sh
rm -rf build/ devel/  # if switching branch or pre-existing build files
catkin_make
source devel/setp.bash
export GAZEBO_MODEL_PATH="${GAZEBO_MODEL_PATH}:/home/martin/Bot_Factory/src/production_chain/models/"
```


