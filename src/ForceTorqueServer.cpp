#include "ros/ros.h"
#include "force_sensor_serial_port/ForceTorque.h"
#include "force_sensor_serial_port/ForceTorqueTare.h"
#include <cereal_port/CerealPort.h>
#include <sstream>
#include <fstream>

int main(int argc, char **argv){
  ros::init(argc, argv, "ForceTorqueServer");
  
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<force_sensor_serial_port::ForceTorque>("ForceTorqueReadings", 10);
  //open the serial communication
   cereal::CerealPort cp;
  cp.open("/dev/ttyUSB0", 9600);

  cp.write("OA\r",3);

  //  register the callback
  ros::Rate loop_rate(300);
  std::cout <<"Starting \n";
  std::ofstream os ("test_data");
  int i = 1;
  while (ros::ok()){
    force_sensor_serial_port::ForceTorque fm;

    std::string s;

    double test;

    do{
      cp.readLine(&s,1000);
      //parse message and publish it

      std::stringstream ss;
      ss << s;
      ss >> test >> fm.xForceNewtons >> fm.yForceNewtons >> fm.zForceNewtons >> fm.xTorqueNewtonMeters >> fm.yTorqueNewtonMeters >> fm.zTorqueNewtonMeters ;
      os << s;  
    }while(test != 0);
    chatter_pub.publish(fm);

    if (!i%1000){
      os.flush();
      break;
    }
    i++;
    loop_rate.sleep();
  }
  return 0;
}

