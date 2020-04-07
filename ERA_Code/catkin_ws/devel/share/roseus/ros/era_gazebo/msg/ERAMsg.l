;; Auto-generated. Do not edit!


(when (boundp 'era_gazebo::ERAMsg)
  (if (not (find-package "ERA_GAZEBO"))
    (make-package "ERA_GAZEBO"))
  (shadow 'ERAMsg (find-package "ERA_GAZEBO")))
(unless (find-package "ERA_GAZEBO::ERAMSG")
  (make-package "ERA_GAZEBO::ERAMSG"))

(in-package "ROS")
;;//! \htmlinclude ERAMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass era_gazebo::ERAMsg
  :super ros::object
  :slots (_header _ID _pose _grid ))

(defmethod era_gazebo::ERAMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID __ID) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:grid __grid) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID (string __ID))
   (setq _pose __pose)
   (setq _grid __grid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:grid
   (&rest __grid)
   (if (keywordp (car __grid))
       (send* _grid __grid)
     (progn
       (if __grid (setq _grid (car __grid)))
       _grid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ID
    4 (length _ID)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; nav_msgs/OccupancyGrid _grid
    (send _grid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ID
       (write-long (length _ID) s) (princ _ID s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; nav_msgs/OccupancyGrid _grid
       (send _grid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; nav_msgs/OccupancyGrid _grid
     (send _grid :deserialize buf ptr-) (incf ptr- (send _grid :serialization-length))
   ;;
   self)
  )

(setf (get era_gazebo::ERAMsg :md5sum-) "b95f2c9c8a23e957a60f31cf6a105519")
(setf (get era_gazebo::ERAMsg :datatype-) "era_gazebo/ERAMsg")
(setf (get era_gazebo::ERAMsg :definition-)
      "Header header

string ID
geometry_msgs/Pose pose
nav_msgs/OccupancyGrid grid
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
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
")



(provide :era_gazebo/ERAMsg "b95f2c9c8a23e957a60f31cf6a105519")


