#!/usr/bin/env sh
# generated from catkin/cmake/template/local_setup.sh.in

# since this file is sourced either use the provided _CATKIN_SETUP_DIR
# or fall back to the destination set at configure time
<<<<<<< HEAD
: ${_CATKIN_SETUP_DIR:=/home/yididya/arm_ws/install}
=======
: ${_CATKIN_SETUP_DIR:=/home/riyad/Downloads/Compressed/arm_ws/install}
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
CATKIN_SETUP_UTIL_ARGS="--extend --local"
. "$_CATKIN_SETUP_DIR/setup.sh"
unset CATKIN_SETUP_UTIL_ARGS
