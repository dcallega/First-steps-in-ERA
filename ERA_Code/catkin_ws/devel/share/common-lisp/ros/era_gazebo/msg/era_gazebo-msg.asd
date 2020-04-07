
(cl:in-package :asdf)

(defsystem "era_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectionBox" :depends-on ("_package_DetectionBox"))
    (:file "_package_DetectionBox" :depends-on ("_package"))
    (:file "DetectionBoxList" :depends-on ("_package_DetectionBoxList"))
    (:file "_package_DetectionBoxList" :depends-on ("_package"))
    (:file "ERAMsg" :depends-on ("_package_ERAMsg"))
    (:file "_package_ERAMsg" :depends-on ("_package"))
    (:file "ERAOccupancyGrid" :depends-on ("_package_ERAOccupancyGrid"))
    (:file "_package_ERAOccupancyGrid" :depends-on ("_package"))
  ))