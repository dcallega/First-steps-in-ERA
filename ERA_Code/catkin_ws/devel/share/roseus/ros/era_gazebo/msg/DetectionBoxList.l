;; Auto-generated. Do not edit!


(when (boundp 'era_gazebo::DetectionBoxList)
  (if (not (find-package "ERA_GAZEBO"))
    (make-package "ERA_GAZEBO"))
  (shadow 'DetectionBoxList (find-package "ERA_GAZEBO")))
(unless (find-package "ERA_GAZEBO::DETECTIONBOXLIST")
  (make-package "ERA_GAZEBO::DETECTIONBOXLIST"))

(in-package "ROS")
;;//! \htmlinclude DetectionBoxList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass era_gazebo::DetectionBoxList
  :super ros::object
  :slots (_header _detection_list ))

(defmethod era_gazebo::DetectionBoxList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detection_list __detection_list) (let (r) (dotimes (i 0) (push (instance era_gazebo::DetectionBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _detection_list __detection_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detection_list
   (&rest __detection_list)
   (if (keywordp (car __detection_list))
       (send* _detection_list __detection_list)
     (progn
       (if __detection_list (setq _detection_list (car __detection_list)))
       _detection_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; era_gazebo/DetectionBox[] _detection_list
    (apply #'+ (send-all _detection_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; era_gazebo/DetectionBox[] _detection_list
     (write-long (length _detection_list) s)
     (dolist (elem _detection_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; era_gazebo/DetectionBox[] _detection_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detection_list (let (r) (dotimes (i n) (push (instance era_gazebo::DetectionBox :init) r)) r))
     (dolist (elem- _detection_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get era_gazebo::DetectionBoxList :md5sum-) "e7caafab23e9902293afd0ef03657c9d")
(setf (get era_gazebo::DetectionBoxList :datatype-) "era_gazebo/DetectionBoxList")
(setf (get era_gazebo::DetectionBoxList :definition-)
      "Header header

DetectionBox[] detection_list
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
MSG: era_gazebo/DetectionBox
Header header

string type
uint16 id
uint32 left
uint32 right
uint32 top
uint32 bottom
float32[] mask_1d

")



(provide :era_gazebo/DetectionBoxList "e7caafab23e9902293afd0ef03657c9d")


