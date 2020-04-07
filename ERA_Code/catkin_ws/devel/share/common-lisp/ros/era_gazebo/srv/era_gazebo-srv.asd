
(cl:in-package :asdf)

(defsystem "era_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :era_gazebo-msg
)
  :components ((:file "_package")
    (:file "SceneBBox" :depends-on ("_package_SceneBBox"))
    (:file "_package_SceneBBox" :depends-on ("_package"))
  ))