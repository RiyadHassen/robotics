#include "cmath"
#include "ros/ros.h"
#include "transformation/Input.h"
#include "transformation/Output.h"



int main(int argc, char **argv)
{
  // ROS objects
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher vector_pub = n.advertise<transformation::Output>("vector", 1);
  ros::Rate loop_rate(1);
 
  
  while (ros::ok())
  {
    transformation::Input input;
    std::cout << "X: ";
    std::cin >> input.x;
    std::cout << "Y: ";
    std::cin >> input.y;
    std::cout << "Z: ";
    std::cin >> input.z;
    std::cout << "Angle alpha: ";
    std::cin >> input.alpha;
    std::cout << "Angle beta: ";
    std::cin >> input.beta;
    std::cout << "Angle gamma: ";
    std::cin >> input.gamma;
    std::cout << "d: ";
    std::cin >> input.d;
   
    //Convert the angles from degree to radians
    input.alpha = M_PI*input.alpha/180;
    input.beta =  M_PI*input.beta/180;
    input.gamma =  M_PI*input.gamma/180;
    
    float newx,newy,newz;
    //Rotate along the x-axis
    // y'=ycos0-zsin0
    // z'=ysin0+zcos0
    // x'=x    
     newy=(input.y*cos(input.alpha))-(input.z*sin(input.alpha));
     newz=(input.y*sin(input.alpha))+(input.z*cos(input.alpha));
     newx=input.x;
     

    //Rotate along the y-axis
    // z'=zcos0-xsin0
    // x'=zsin0+xcos0
    // y'=y
     newz=(newz*cos(input.beta))-(newx*sin(input.beta));
     newx=(newz*sin(input.beta))+(newx*cos(input.beta));
     newy=newy;

    //Rotate along the z-axis
    // x'=xcos0-ysin0
    // y'=xsin0+ycos0
    // z'=z
     newx=(newx*cos(input.gamma))-(newy*sin(input.gamma));
     newy=(newx*sin(input.gamma))+(newy*cos(input.gamma));
    
    //Translate by d
    transformation::Output output;
    output.x = newx + input.d; 
    output.y = newy + input.d;
    output.z = newz + input.d;

    vector_pub.publish(output);
    ros::spinOnce();

    loop_rate.sleep();
   
  }


  return 0;
}


//Given vector 20,7,5
//Rotate around x by 30 - 20, 3.56218, 7.83013
//Rotate around y by 45 - 19.67887, 3.56218, -8.6054
//Rotate around z by 90 - -3.56218, 19.67887, -8.6054
//Translate all of them by 1

// -2.5 20.67 7.6
