; Auto-generated. Do not edit!


(cl:in-package era_gazebo-msg)


;//! \htmlinclude DetectionBoxList.msg.html

(cl:defclass <DetectionBoxList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detection_list
    :reader detection_list
    :initarg :detection_list
    :type (cl:vector era_gazebo-msg:DetectionBox)
   :initform (cl:make-array 0 :element-type 'era_gazebo-msg:DetectionBox :initial-element (cl:make-instance 'era_gazebo-msg:DetectionBox))))
)

(cl:defclass DetectionBoxList (<DetectionBoxList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionBoxList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionBoxList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name era_gazebo-msg:<DetectionBoxList> is deprecated: use era_gazebo-msg:DetectionBoxList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectionBoxList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:header-val is deprecated.  Use era_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detection_list-val :lambda-list '(m))
(cl:defmethod detection_list-val ((m <DetectionBoxList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:detection_list-val is deprecated.  Use era_gazebo-msg:detection_list instead.")
  (detection_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionBoxList>) ostream)
  "Serializes a message object of type '<DetectionBoxList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detection_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detection_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionBoxList>) istream)
  "Deserializes a message object of type '<DetectionBoxList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detection_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detection_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'era_gazebo-msg:DetectionBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionBoxList>)))
  "Returns string type for a message object of type '<DetectionBoxList>"
  "era_gazebo/DetectionBoxList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionBoxList)))
  "Returns string type for a message object of type 'DetectionBoxList"
  "era_gazebo/DetectionBoxList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionBoxList>)))
  "Returns md5sum for a message object of type '<DetectionBoxList>"
  "e7caafab23e9902293afd0ef03657c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionBoxList)))
  "Returns md5sum for a message object of type 'DetectionBoxList"
  "e7caafab23e9902293afd0ef03657c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionBoxList>)))
  "Returns full string definition for message of type '<DetectionBoxList>"
  (cl:format cl:nil "Header header~%~%DetectionBox[] detection_list~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: era_gazebo/DetectionBox~%Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionBoxList)))
  "Returns full string definition for message of type 'DetectionBoxList"
  (cl:format cl:nil "Header header~%~%DetectionBox[] detection_list~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: era_gazebo/DetectionBox~%Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionBoxList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detection_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionBoxList>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionBoxList
    (cl:cons ':header (header msg))
    (cl:cons ':detection_list (detection_list msg))
))
