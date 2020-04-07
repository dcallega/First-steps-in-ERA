;; Auto-generated. Do not edit!


(when (boundp 'era_gazebo::SceneBBox)
  (if (not (find-package "ERA_GAZEBO"))
    (make-package "ERA_GAZEBO"))
  (shadow 'SceneBBox (find-package "ERA_GAZEBO")))
(unless (find-package "ERA_GAZEBO::SCENEBBOX")
  (make-package "ERA_GAZEBO::SCENEBBOX"))
(unless (find-package "ERA_GAZEBO::SCENEBBOXREQUEST")
  (make-package "ERA_GAZEBO::SCENEBBOXREQUEST"))
(unless (find-package "ERA_GAZEBO::SCENEBBOXRESPONSE")
  (make-package "ERA_GAZEBO::SCENEBBOXRESPONSE"))

(in-package "ROS")





(defclass era_gazebo::SceneBBoxRequest
  :super ros::object
  :slots (_bbox ))

(defmethod era_gazebo::SceneBBoxRequest
  (:init
   (&key
    ((:bbox __bbox) (instance era_gazebo::DetectionBox :init))
    )
   (send-super :init)
   (setq _bbox __bbox)
   self)
  (:bbox
   (&rest __bbox)
   (if (keywordp (car __bbox))
       (send* _bbox __bbox)
     (progn
       (if __bbox (setq _bbox (car __bbox)))
       _bbox)))
  (:serialization-length
   ()
   (+
    ;; era_gazebo/DetectionBox _bbox
    (send _bbox :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; era_gazebo/DetectionBox _bbox
       (send _bbox :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; era_gazebo/DetectionBox _bbox
     (send _bbox :deserialize buf ptr-) (incf ptr- (send _bbox :serialization-length))
   ;;
   self)
  )

(defclass era_gazebo::SceneBBoxResponse
  :super ros::object
  :slots ())

(defmethod era_gazebo::SceneBBoxResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass era_gazebo::SceneBBox
  :super ros::object
  :slots ())

(setf (get era_gazebo::SceneBBox :md5sum-) "dd321c86fe9be2b64c0490217178f7cc")
(setf (get era_gazebo::SceneBBox :datatype-) "era_gazebo/SceneBBox")
(setf (get era_gazebo::SceneBBox :request) era_gazebo::SceneBBoxRequest)
(setf (get era_gazebo::SceneBBox :response) era_gazebo::SceneBBoxResponse)

(defmethod era_gazebo::SceneBBoxRequest
  (:response () (instance era_gazebo::SceneBBoxResponse :init)))

(setf (get era_gazebo::SceneBBoxRequest :md5sum-) "dd321c86fe9be2b64c0490217178f7cc")
(setf (get era_gazebo::SceneBBoxRequest :datatype-) "era_gazebo/SceneBBoxRequest")
(setf (get era_gazebo::SceneBBoxRequest :definition-)
      "DetectionBox bbox

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
---


")

(setf (get era_gazebo::SceneBBoxResponse :md5sum-) "dd321c86fe9be2b64c0490217178f7cc")
(setf (get era_gazebo::SceneBBoxResponse :datatype-) "era_gazebo/SceneBBoxResponse")
(setf (get era_gazebo::SceneBBoxResponse :definition-)
      "DetectionBox bbox

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
---


")



(provide :era_gazebo/SceneBBox "dd321c86fe9be2b64c0490217178f7cc")


