; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude SendMessage-request.msg.html

(cl:defclass <SendMessage-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:string
    :initform ""))
)

(cl:defclass SendMessage-request (<SendMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<SendMessage-request> is deprecated: use beginner_tutorials-srv:SendMessage-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SendMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:x-val is deprecated.  Use beginner_tutorials-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMessage-request>) ostream)
  "Serializes a message object of type '<SendMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'x))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMessage-request>) istream)
  "Deserializes a message object of type '<SendMessage-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMessage-request>)))
  "Returns string type for a service object of type '<SendMessage-request>"
  "beginner_tutorials/SendMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMessage-request)))
  "Returns string type for a service object of type 'SendMessage-request"
  "beginner_tutorials/SendMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMessage-request>)))
  "Returns md5sum for a message object of type '<SendMessage-request>"
  "ab7c2a139228f69ecebcc23eb84b1eff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMessage-request)))
  "Returns md5sum for a message object of type 'SendMessage-request"
  "ab7c2a139228f69ecebcc23eb84b1eff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMessage-request>)))
  "Returns full string definition for message of type '<SendMessage-request>"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMessage-request)))
  "Returns full string definition for message of type 'SendMessage-request"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'x))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMessage-request
    (cl:cons ':x (x msg))
))
;//! \htmlinclude SendMessage-response.msg.html

(cl:defclass <SendMessage-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass SendMessage-response (<SendMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<SendMessage-response> is deprecated: use beginner_tutorials-srv:SendMessage-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SendMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:response-val is deprecated.  Use beginner_tutorials-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMessage-response>) ostream)
  "Serializes a message object of type '<SendMessage-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMessage-response>) istream)
  "Deserializes a message object of type '<SendMessage-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMessage-response>)))
  "Returns string type for a service object of type '<SendMessage-response>"
  "beginner_tutorials/SendMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMessage-response)))
  "Returns string type for a service object of type 'SendMessage-response"
  "beginner_tutorials/SendMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMessage-response>)))
  "Returns md5sum for a message object of type '<SendMessage-response>"
  "ab7c2a139228f69ecebcc23eb84b1eff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMessage-response)))
  "Returns md5sum for a message object of type 'SendMessage-response"
  "ab7c2a139228f69ecebcc23eb84b1eff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMessage-response>)))
  "Returns full string definition for message of type '<SendMessage-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMessage-response)))
  "Returns full string definition for message of type 'SendMessage-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMessage-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMessage-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendMessage)))
  'SendMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendMessage)))
  'SendMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMessage)))
  "Returns string type for a service object of type '<SendMessage>"
  "beginner_tutorials/SendMessage")