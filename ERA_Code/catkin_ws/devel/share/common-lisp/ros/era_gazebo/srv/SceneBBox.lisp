; Auto-generated. Do not edit!


(cl:in-package era_gazebo-srv)


;//! \htmlinclude SceneBBox-request.msg.html

(cl:defclass <SceneBBox-request> (roslisp-msg-protocol:ros-message)
  ((bbox
    :reader bbox
    :initarg :bbox
    :type era_gazebo-msg:DetectionBox
    :initform (cl:make-instance 'era_gazebo-msg:DetectionBox)))
)

(cl:defclass SceneBBox-request (<SceneBBox-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneBBox-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneBBox-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name era_gazebo-srv:<SceneBBox-request> is deprecated: use era_gazebo-srv:SceneBBox-request instead.")))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <SceneBBox-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-srv:bbox-val is deprecated.  Use era_gazebo-srv:bbox instead.")
  (bbox m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneBBox-request>) ostream)
  "Serializes a message object of type '<SceneBBox-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneBBox-request>) istream)
  "Deserializes a message object of type '<SceneBBox-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneBBox-request>)))
  "Returns string type for a service object of type '<SceneBBox-request>"
  "era_gazebo/SceneBBoxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneBBox-request)))
  "Returns string type for a service object of type 'SceneBBox-request"
  "era_gazebo/SceneBBoxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneBBox-request>)))
  "Returns md5sum for a message object of type '<SceneBBox-request>"
  "dd321c86fe9be2b64c0490217178f7cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneBBox-request)))
  "Returns md5sum for a message object of type 'SceneBBox-request"
  "dd321c86fe9be2b64c0490217178f7cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneBBox-request>)))
  "Returns full string definition for message of type '<SceneBBox-request>"
  (cl:format cl:nil "DetectionBox bbox~%~%================================================================================~%MSG: era_gazebo/DetectionBox~%Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneBBox-request)))
  "Returns full string definition for message of type 'SceneBBox-request"
  (cl:format cl:nil "DetectionBox bbox~%~%================================================================================~%MSG: era_gazebo/DetectionBox~%Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneBBox-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneBBox-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneBBox-request
    (cl:cons ':bbox (bbox msg))
))
;//! \htmlinclude SceneBBox-response.msg.html

(cl:defclass <SceneBBox-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SceneBBox-response (<SceneBBox-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneBBox-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneBBox-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name era_gazebo-srv:<SceneBBox-response> is deprecated: use era_gazebo-srv:SceneBBox-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneBBox-response>) ostream)
  "Serializes a message object of type '<SceneBBox-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneBBox-response>) istream)
  "Deserializes a message object of type '<SceneBBox-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneBBox-response>)))
  "Returns string type for a service object of type '<SceneBBox-response>"
  "era_gazebo/SceneBBoxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneBBox-response)))
  "Returns string type for a service object of type 'SceneBBox-response"
  "era_gazebo/SceneBBoxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneBBox-response>)))
  "Returns md5sum for a message object of type '<SceneBBox-response>"
  "dd321c86fe9be2b64c0490217178f7cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneBBox-response)))
  "Returns md5sum for a message object of type 'SceneBBox-response"
  "dd321c86fe9be2b64c0490217178f7cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneBBox-response>)))
  "Returns full string definition for message of type '<SceneBBox-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneBBox-response)))
  "Returns full string definition for message of type 'SceneBBox-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneBBox-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneBBox-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneBBox-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SceneBBox)))
  'SceneBBox-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SceneBBox)))
  'SceneBBox-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneBBox)))
  "Returns string type for a service object of type '<SceneBBox>"
  "era_gazebo/SceneBBox")