#include "ros/ros.h"
#include "force_sensor_serial_port/ForceTorque.h"
#include "std_msgs/String.h"
#include <cstring>
#include <iostream>

ros::Publisher * warning_pub;
void forceTorqueCallback(const force_sensor_serial_port::ForceTorqueConstPtr& msg){

  //get mean of last three z axes
  double z[3];
  

  if((msg->zForceNewtons  + z[0] + z[1] + z[2])/4 < -8.0)
    std_msgs::String msg;
    msg.data = "Hit \n";
    std::cout << "Hit \n";
    warning_pub->publish(msg);
  }

z[2] = z[1];
z[1] = z[0];
z[0] = msg->zForceNewtons;
  

}

int main(int argc, char ** argv){
  ros::init(argc, argv, "ForceTorqueWatcher");
  ros::NodeHandle n;
  
  ros::Subscriber sub = n.subscribe("ForceTorqueReadings", 10, forceTorqueCallback);
  ros::Publisher warning_pub_impl = n.advertise<std_msgs::String>("ForceTorqueWatcher/Warning", 5);
  warning_pub = &warning_pub_impl;

  ros::spin();
  return 0;


    
}
