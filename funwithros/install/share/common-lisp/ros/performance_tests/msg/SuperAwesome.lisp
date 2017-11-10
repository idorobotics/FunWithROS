; Auto-generated. Do not edit!


(cl:in-package performance_tests-msg)


;//! \htmlinclude SuperAwesome.msg.html

(cl:defclass <SuperAwesome> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (awesome
    :reader awesome
    :initarg :awesome
    :type cl:string
    :initform ""))
)

(cl:defclass SuperAwesome (<SuperAwesome>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuperAwesome>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuperAwesome)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name performance_tests-msg:<SuperAwesome> is deprecated: use performance_tests-msg:SuperAwesome instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SuperAwesome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader performance_tests-msg:header-val is deprecated.  Use performance_tests-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'awesome-val :lambda-list '(m))
(cl:defmethod awesome-val ((m <SuperAwesome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader performance_tests-msg:awesome-val is deprecated.  Use performance_tests-msg:awesome instead.")
  (awesome m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuperAwesome>) ostream)
  "Serializes a message object of type '<SuperAwesome>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'awesome))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'awesome))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuperAwesome>) istream)
  "Deserializes a message object of type '<SuperAwesome>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'awesome) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'awesome) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuperAwesome>)))
  "Returns string type for a message object of type '<SuperAwesome>"
  "performance_tests/SuperAwesome")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperAwesome)))
  "Returns string type for a message object of type 'SuperAwesome"
  "performance_tests/SuperAwesome")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuperAwesome>)))
  "Returns md5sum for a message object of type '<SuperAwesome>"
  "4b79564452a70ac6ef155a29a39e7b9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuperAwesome)))
  "Returns md5sum for a message object of type 'SuperAwesome"
  "4b79564452a70ac6ef155a29a39e7b9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuperAwesome>)))
  "Returns full string definition for message of type '<SuperAwesome>"
  (cl:format cl:nil "Header header~%string awesome~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuperAwesome)))
  "Returns full string definition for message of type 'SuperAwesome"
  (cl:format cl:nil "Header header~%string awesome~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuperAwesome>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'awesome))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuperAwesome>))
  "Converts a ROS message object to a list"
  (cl:list 'SuperAwesome
    (cl:cons ':header (header msg))
    (cl:cons ':awesome (awesome msg))
))
