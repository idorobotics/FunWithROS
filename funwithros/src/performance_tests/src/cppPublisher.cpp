#include "ros/ros.h"
#include "performance_tests/SuperAwesome.h"

#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cppPublisher");
  ros::NodeHandle n;

  ros::Publisher cpp_pub = n.advertise<performance_tests::SuperAwesome>("/awesome_topic", 1000); //size of message queue
  double rate;
  if (!(ros::param::get("/cppPublisher/publish_frequency",rate)))
  {
	ROS_ERROR("Failed to get param 'publish_frequency'");
  }
  ros::Rate loop_rate(rate);
  std::cout << rate << std::endl;


  while (ros::ok())
  {
    performance_tests::SuperAwesome msg;

    std::stringstream ss;
    ss << "Welcome to ROS!";
    msg.awesome = ss.str();

    cpp_pub.publish(msg);

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
