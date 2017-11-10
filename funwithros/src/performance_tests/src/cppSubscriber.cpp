#include "ros/ros.h"
#include "performance_tests/SuperAwesome.h"

void cppCallback(const performance_tests::SuperAwesome::ConstPtr& msg)
{
  ROS_INFO("[%s]", msg->awesome.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cppSubscriber");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/awesome_topic", 1000, cppCallback); //size of message queue

  ros::spin();

  return 0;
}
