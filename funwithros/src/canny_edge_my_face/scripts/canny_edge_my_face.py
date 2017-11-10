#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge, CvBridgeError
import sys
from std_msgs.msg import String

bridge = CvBridge()

def callback(msg):
	#convert ros message to opencv format	
	try:	
		cv_image = bridge.imgmsg_to_cv2(msg,desired_encoding=msg.encoding)
	except CvBridgeError as e:
		print(e)
	#canny edge detection 	
	edges = cv2.Canny(cv_image,20,100)
	#convert opencv format back to ros format and publish result
	try:
		image_message = bridge.cv2_to_imgmsg(edges,"mono8")
	except CvBridgeError as e:
		print(e)
	pub.publish(image_message)

if __name__ == '__main__':
	#create ROS node	
	rospy.init_node("canny_edge_my_face")
	rate = rospy.Rate(100)

	while not rospy.is_shutdown():
		#subscriber to topic from cv_camera 
		rospy.Subscriber('/cv_camera_node/image_raw',Image,callback)	
		#publisher  
		pub = rospy.Publisher('/canny_edge_my_face/image_canny',Image, queue_size=1)	
		rate.sleep()
