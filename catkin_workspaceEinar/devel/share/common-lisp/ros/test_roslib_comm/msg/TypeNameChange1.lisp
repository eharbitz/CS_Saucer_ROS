; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude TypeNameChange1.msg.html

(cl:defclass <TypeNameChange1> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type test_roslib_comm-msg:SameSubMsg1
    :initform (cl:make-instance 'test_roslib_comm-msg:SameSubMsg1)))
)

(cl:defclass TypeNameChange1 (<TypeNameChange1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeNameChange1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeNameChange1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<TypeNameChange1> is deprecated: use test_roslib_comm-msg:TypeNameChange1 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TypeNameChange1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:a-val is deprecated.  Use test_roslib_comm-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeNameChange1>) ostream)
  "Serializes a message object of type '<TypeNameChange1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeNameChange1>) istream)
  "Deserializes a message object of type '<TypeNameChange1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeNameChange1>)))
  "Returns string type for a message object of type '<TypeNameChange1>"
  "test_roslib_comm/TypeNameChange1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeNameChange1)))
  "Returns string type for a message object of type 'TypeNameChange1"
  "test_roslib_comm/TypeNameChange1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeNameChange1>)))
  "Returns md5sum for a message object of type '<TypeNameChange1>"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeNameChange1)))
  "Returns md5sum for a message object of type 'TypeNameChange1"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeNameChange1>)))
  "Returns full string definition for message of type '<TypeNameChange1>"
  (cl:format cl:nil "SameSubMsg1 a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeNameChange1)))
  "Returns full string definition for message of type 'TypeNameChange1"
  (cl:format cl:nil "SameSubMsg1 a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeNameChange1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeNameChange1>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeNameChange1
    (cl:cons ':a (a msg))
))
