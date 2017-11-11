#!/usr/bin/env python

import rospy
from performance_tests.msg import SuperAwesome

rospy.init_node("pyPublisher")
msg_string = SuperAwesome()
pub = rospy.Publisher('/awesome_topic', SuperAwesome, queue_size=1)
r = rospy.Rate(rospy.get_param("/pyPublisher/publish_frequency")) 
print(rospy.get_param("/pyPublisher/publish_frequency"))

while not rospy.is_shutdown():
	msg_string.awesome = "Welcome to ROS!"
	pub.publish(msg_string)
	r.sleep()
