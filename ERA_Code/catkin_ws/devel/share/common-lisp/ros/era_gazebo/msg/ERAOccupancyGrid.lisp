; Auto-generated. Do not edit!


(cl:in-package era_gazebo-msg)


;//! \htmlinclude ERAOccupancyGrid.msg.html

(cl:defclass <ERAOccupancyGrid> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ERAOccupancyGrid (<ERAOccupancyGrid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ERAOccupancyGrid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ERAOccupancyGrid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name era_gazebo-msg:<ERAOccupancyGrid> is deprecated: use era_gazebo-msg:ERAOccupancyGrid instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ERAOccupancyGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:header-val is deprecated.  Use era_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ERAOccupancyGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:info-val is deprecated.  Use era_gazebo-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ERAOccupancyGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader era_gazebo-msg:data-val is deprecated.  Use era_gazebo-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ERAOccupancyGrid>) ostream)
  "Serializes a message object of type '<ERAOccupancyGrid>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ERAOccupancyGrid>) istream)
  "Deserializes a message object of type '<ERAOccupancyGrid>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ERAOccupancyGrid>)))
  "Returns string type for a message object of type '<ERAOccupancyGrid>"
  "era_gazebo/ERAOccupancyGrid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ERAOccupancyGrid)))
  "Returns string type for a message object of type 'ERAOccupancyGrid"
  "era_gazebo/ERAOccupancyGrid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ERAOccupancyGrid>)))
  "Returns md5sum for a message object of type '<ERAOccupancyGrid>"
  "3381f2d731d4076ec5c71b0759edbe4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ERAOccupancyGrid)))
  "Returns md5sum for a message object of type 'ERAOccupancyGrid"
  "3381f2d731d4076ec5c71b0759edbe4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ERAOccupancyGrid>)))
  "Returns full string definition for message of type '<ERAOccupancyGrid>"
  (cl:format cl:nil "# This represents a custom OccupancyGrid message for map exchanging in ERA.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ERAOccupancyGrid)))
  "Returns full string definition for message of type 'ERAOccupancyGrid"
  (cl:format cl:nil "# This represents a custom OccupancyGrid message for map exchanging in ERA.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ERAOccupancyGrid>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ERAOccupancyGrid>))
  "Converts a ROS message object to a list"
  (cl:list 'ERAOccupancyGrid
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
