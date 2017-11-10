;; Auto-generated. Do not edit!


(when (boundp 'performance_tests::SuperAwesome)
  (if (not (find-package "PERFORMANCE_TESTS"))
    (make-package "PERFORMANCE_TESTS"))
  (shadow 'SuperAwesome (find-package "PERFORMANCE_TESTS")))
(unless (find-package "PERFORMANCE_TESTS::SUPERAWESOME")
  (make-package "PERFORMANCE_TESTS::SUPERAWESOME"))

(in-package "ROS")
;;//! \htmlinclude SuperAwesome.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass performance_tests::SuperAwesome
  :super ros::object
  :slots (_header _awesome ))

(defmethod performance_tests::SuperAwesome
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:awesome __awesome) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _awesome (string __awesome))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:awesome
   (&optional __awesome)
   (if __awesome (setq _awesome __awesome)) _awesome)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _awesome
    4 (length _awesome)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _awesome
       (write-long (length _awesome) s) (princ _awesome s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _awesome
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _awesome (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get performance_tests::SuperAwesome :md5sum-) "4b79564452a70ac6ef155a29a39e7b9f")
(setf (get performance_tests::SuperAwesome :datatype-) "performance_tests/SuperAwesome")
(setf (get performance_tests::SuperAwesome :definition-)
      "Header header
string awesome

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :performance_tests/SuperAwesome "4b79564452a70ac6ef155a29a39e7b9f")


