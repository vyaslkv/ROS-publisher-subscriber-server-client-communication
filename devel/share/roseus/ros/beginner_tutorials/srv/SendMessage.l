;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::SendMessage)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'SendMessage (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::SENDMESSAGE")
  (make-package "BEGINNER_TUTORIALS::SENDMESSAGE"))
(unless (find-package "BEGINNER_TUTORIALS::SENDMESSAGEREQUEST")
  (make-package "BEGINNER_TUTORIALS::SENDMESSAGEREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::SENDMESSAGERESPONSE")
  (make-package "BEGINNER_TUTORIALS::SENDMESSAGERESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::SendMessageRequest
  :super ros::object
  :slots (_x ))

(defmethod beginner_tutorials::SendMessageRequest
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

(defclass beginner_tutorials::SendMessageResponse
  :super ros::object
  :slots (_response ))

(defmethod beginner_tutorials::SendMessageResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::SendMessage
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::SendMessage :md5sum-) "ab7c2a139228f69ecebcc23eb84b1eff")
(setf (get beginner_tutorials::SendMessage :datatype-) "beginner_tutorials/SendMessage")
(setf (get beginner_tutorials::SendMessage :request) beginner_tutorials::SendMessageRequest)
(setf (get beginner_tutorials::SendMessage :response) beginner_tutorials::SendMessageResponse)

(defmethod beginner_tutorials::SendMessageRequest
  (:response () (instance beginner_tutorials::SendMessageResponse :init)))

(setf (get beginner_tutorials::SendMessageRequest :md5sum-) "ab7c2a139228f69ecebcc23eb84b1eff")
(setf (get beginner_tutorials::SendMessageRequest :datatype-) "beginner_tutorials/SendMessageRequest")
(setf (get beginner_tutorials::SendMessageRequest :definition-)
      "string x

---
string response

")

(setf (get beginner_tutorials::SendMessageResponse :md5sum-) "ab7c2a139228f69ecebcc23eb84b1eff")
(setf (get beginner_tutorials::SendMessageResponse :datatype-) "beginner_tutorials/SendMessageResponse")
(setf (get beginner_tutorials::SendMessageResponse :definition-)
      "string x

---
string response

")



(provide :beginner_tutorials/SendMessage "ab7c2a139228f69ecebcc23eb84b1eff")


