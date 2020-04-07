; Auto-generated. Do not edit!


(cl:in-package era_gazebo-msg)


;//! \htmlinclude DetectionBox.msg.html

(cl:defclass <DetectionBox> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:integer
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:integer
    :initform 0)
   (top
    :reader top
    :initarg :top
    :type cl:integer
    :initform 0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type cl:integer
    :initform 0)
   (mask_1d
    :reader mask_1d
    :initarg :mask_1d
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DetectionBox (<DetectionBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name era_gazebo-msg:<DetectionBox> is deprecated: use era_gazebo-msg:DetectionBox instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:header-val is deprecated.  Use era_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:type-val is deprecated.  Use era_gazebo-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:id-val is deprecated.  Use era_gazebo-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:left-val is deprecated.  Use era_gazebo-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:right-val is deprecated.  Use era_gazebo-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:top-val is deprecated.  Use era_gazebo-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:bottom-val is deprecated.  Use era_gazebo-msg:bottom instead.")
  (bottom m))

(cl:ensure-generic-function 'mask_1d-val :lambda-list '(m))
(cl:defmethod mask_1d-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:mask_1d-val is deprecated.  Use era_gazebo-msg:mask_1d instead.")
  (mask_1d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionBox>) ostream)
  "Serializes a message object of type '<DetectionBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'top)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'top)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'top)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bottom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bottom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bottom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bottom)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mask_1d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'mask_1d))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionBox>) istream)
  "Deserializes a message object of type '<DetectionBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'top)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'top)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'top)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bottom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bottom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bottom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bottom)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mask_1d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mask_1d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionBox>)))
  "Returns string type for a message object of type '<DetectionBox>"
  "era_gazebo/DetectionBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionBox)))
  "Returns string type for a message object of type 'DetectionBox"
  "era_gazebo/DetectionBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionBox>)))
  "Returns md5sum for a message object of type '<DetectionBox>"
  "d552de66f95ce47b60d4c14ec821db2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionBox)))
  "Returns md5sum for a message object of type 'DetectionBox"
  "d552de66f95ce47b60d4c14ec821db2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionBox>)))
  "Returns full string definition for message of type '<DetectionBox>"
  (cl:format cl:nil "Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionBox)))
  "Returns full string definition for message of type 'DetectionBox"
  (cl:format cl:nil "Header header~%~%string type~%uint16 id~%uint32 left~%uint32 right~%uint32 top~%uint32 bottom~%float32[] mask_1d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     2
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mask_1d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionBox>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionBox
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':top (top msg))
    (cl:cons ':bottom (bottom msg))
    (cl:cons ':mask_1d (mask_1d msg))
))
