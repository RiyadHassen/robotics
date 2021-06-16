cmake_minimum_required(VERSION 3.0.2)
project(arm_gazebo)

find_package(catkin REQUIRED COMPONENTS
  arm_lib
  roscpp
  rospy
  std_msgs
  gazebo_ros
  message_generation
)

find_package(gazebo REQUIRED)

link_directories(${GAZEBO_LIBRARY_DIRS})
include_directories(${Boost_INCLUDE_DIR} 
              ${catkin_INCLUDE_DIRS} 
              ${GAZEBO_INCLUDE_DIRS} 
              ${roscpp_INCLUDE_DIRS}
              ${std_msgs_INCLUDE_DIRS})

add_library(${PROJECT_NAME} SHARED src/controller.cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES})

add_service_files(
FILES
fk.srv
ik.srv
)

generate_messages(
DEPENDENCIES
std_msgs
)



catkin_package(
DEPENDS roscpp gazebo_ros arm_lib
)
