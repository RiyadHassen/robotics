#include "ros/ros.h"
#include "transformation/Output.h"
#include <string>

void chatterCallback(const transformation::Output::ConstPtr& msg){
  ROS_INFO("Vectors after transformation: (x',y',z')=(%.2f,%.2f, %.2f)", msg->x, msg->y, msg->z);
}

int main(int argc, char **argv){
   ros::init(argc, argv, "listener");
   ros::NodeHandle n;
   ros::Subscriber vector_sub = n.subscribe("vector", 1000, chatterCallback);
   ros::spin();
   return 0;
}
