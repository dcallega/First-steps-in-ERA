;; Auto-generated. Do not edit!


(when (boundp 'era_gazebo::DetectionBox)
  (if (not (find-package "ERA_GAZEBO"))
    (make-package "ERA_GAZEBO"))
  (shadow 'DetectionBox (find-package "ERA_GAZEBO")))
(unless (find-package "ERA_GAZEBO::DETECTIONBOX")
  (make-package "ERA_GAZEBO::DETECTIONBOX"))

(in-package "ROS")
;;//! \htmlinclude DetectionBox.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass era_gazebo::DetectionBox
  :super ros::object
  :slots (_header _type _id _left _right _top _bottom _mask_1d ))

(defmethod era_gazebo::DetectionBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:id __id) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    ((:top __top) 0)
    ((:bottom __bottom) 0)
    ((:mask_1d __mask_1d) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _id (round __id))
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _top (round __top))
   (setq _bottom (round __bottom))
   (setq _mask_1d __mask_1d)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:mask_1d
   (&optional __mask_1d)
   (if __mask_1d (setq _mask_1d __mask_1d)) _mask_1d)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint16 _id
    2
    ;; uint32 _left
    4
    ;; uint32 _right
    4
    ;; uint32 _top
    4
    ;; uint32 _bottom
    4
    ;; float32[] _mask_1d
    (* 4    (length _mask_1d)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint16 _id
       (write-word _id s)
     ;; uint32 _left
       (write-long _left s)
     ;; uint32 _right
       (write-long _right s)
     ;; uint32 _top
       (write-long _top s)
     ;; uint32 _bottom
       (write-long _bottom s)
     ;; float32[] _mask_1d
     (write-long (length _mask_1d) s)
     (dotimes (i (length _mask_1d))
       (sys::poke (elt _mask_1d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _right
     (setq _right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _top
     (setq _top (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _bottom
     (setq _bottom (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _mask_1d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mask_1d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mask_1d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get era_gazebo::DetectionBox :md5sum-) "d552de66f95ce47b60d4c14ec821db2b")
(setf (get era_gazebo::DetectionBox :datatype-) "era_gazebo/DetectionBox")
(setf (get era_gazebo::DetectionBox :definition-)
      "Header header

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

")



(provide :era_gazebo/DetectionBox "d552de66f95ce47b60d4c14ec821db2b")


