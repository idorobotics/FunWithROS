#!/usr/bin/env python

import rospy
from performance_tests.msg import SuperAwesome

rospy.init_node("pySubscriber")

def callback(msg):
	print msg.awesome

rospy.Subscriber('/awesome_topic', SuperAwesome, callback)
rospy.spin()
