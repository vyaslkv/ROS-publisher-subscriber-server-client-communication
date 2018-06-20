;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::String)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'String (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::STRING")
  (make-package "BEGINNER_TUTORIALS::STRING"))

(in-package "ROS")
;;//! \htmlinclude String.msg.html


(defclass beginner_tutorials::String
  :super ros::object
  :slots (_x ))

(defmethod beginner_tutorials::String
  (:init
   (&key
    ((:x __x) "")
    )
   (send-super :init)
   (setq _x (string __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; string _x
    4 (length _x)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::String :md5sum-) "5e90a477f371ee690ac763e15f14f34b")
(setf (get beginner_tutorials::String :datatype-) "beginner_tutorials/String")
(setf (get beginner_tutorials::String :definition-)
      "string x

")



(provide :beginner_tutorials/String "5e90a477f371ee690ac763e15f14f34b")


