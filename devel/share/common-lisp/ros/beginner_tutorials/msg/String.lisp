; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude String.msg.html

(cl:defclass <String> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:string
    :initform ""))
)

(cl:defclass String (<String>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<String> is deprecated: use beginner_tutorials-msg:String instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <String>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:x-val is deprecated.  Use beginner_tutorials-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String>) ostream)
  "Serializes a message object of type '<String>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'x))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String>) istream)
  "Deserializes a message object of type '<String>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'x) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String>)))
  "Returns string type for a message object of type '<String>"
  "beginner_tutorials/String")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String)))
  "Returns string type for a message object of type 'String"
  "beginner_tutorials/String")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String>)))
  "Returns md5sum for a message object of type '<String>"
  "5e90a477f371ee690ac763e15f14f34b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String)))
  "Returns md5sum for a message object of type 'String"
  "5e90a477f371ee690ac763e15f14f34b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String>)))
  "Returns full string definition for message of type '<String>"
  (cl:format cl:nil "string x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String)))
  "Returns full string definition for message of type 'String"
  (cl:format cl:nil "string x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'x))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String>))
  "Converts a ROS message object to a list"
  (cl:list 'String
    (cl:cons ':x (x msg))
))
