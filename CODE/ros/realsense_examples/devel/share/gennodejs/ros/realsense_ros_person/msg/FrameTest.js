// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Frame = require('./Frame.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class FrameTest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.colorImage = null;
      this.frameData = null;
    }
    else {
      if (initObj.hasOwnProperty('colorImage')) {
        this.colorImage = initObj.colorImage
      }
      else {
        this.colorImage = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('frameData')) {
        this.frameData = initObj.frameData
      }
      else {
        this.frameData = new Frame();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrameTest
    // Serialize message field [colorImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.colorImage, buffer, bufferOffset);
    // Serialize message field [frameData]
    bufferOffset = Frame.serialize(obj.frameData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrameTest
    let len;
    let data = new FrameTest(null);
    // Deserialize message field [colorImage]
    data.colorImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [frameData]
    data.frameData = Frame.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.colorImage);
    length += Frame.getMessageSize(object.frameData);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/FrameTest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '758e664f737fbe3bbd452e73af9b8744';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image colorImage
    Frame frameData
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: realsense_ros_person/Frame
    int32 numberOfUsers
    User[] usersData
    
    ================================================================================
    MSG: realsense_ros_person/User
    UserInfo userInfo
    geometry_msgs/Point32 centerOfMassImage
    geometry_msgs/Point32 centerOfMassWorld
    RectWithConfidence userRect
    RectWithConfidence headBoundingBox
    LandmarksInfo landmarksInfo
    EulerAnglesWithConfidence headPose
    SkeletonJoint[] skeletonJoints
    Gestures gestures
    
    
    ================================================================================
    MSG: realsense_ros_person/UserInfo
    int32 Id
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: realsense_ros_person/RectWithConfidence
    int32 confidence
    geometry_msgs/Point32[2] rectCorners
    
    ================================================================================
    MSG: realsense_ros_person/LandmarksInfo
    int32 confidence
    Landmark[] landmarks
    
    ================================================================================
    MSG: realsense_ros_person/Landmark
    geometry_msgs/Point location
    geometry_msgs/Point32 realWorldCoordinates
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: realsense_ros_person/EulerAnglesWithConfidence
    EulerAngles angles
    int32 confidence
    
    ================================================================================
    MSG: realsense_ros_person/EulerAngles
    float32 pitch
    float32 roll
    float32 yaw
    
    ================================================================================
    MSG: realsense_ros_person/SkeletonJoint
    int32 type
    float32 confidence
    geometry_msgs/Point location
    geometry_msgs/Point32 realWorldCoordinates
    
    #joint types constants
    int32 JOINT_ANKLE_LEFT=0
    int32 JOINT_ANKLE_RIGHT=1
    int32 JOINT_ELBOW_LEFT=2
    int32 JOINT_ELBOW_RIGHT=3
    int32 JOINT_FOOT_LEFT=4
    int32 JOINT_FOOT_RIGHT=5
    int32 JOINT_HAND_LEFT=6
    int32 JOINT_HAND_RIGHT=7
    int32 JOINT_HAND_TIP_LEFT=8
    int32 JOINT_HAND_TIP_RIGHT=9
    int32 JOINT_HEAD=10
    int32 JOINT_HIP_LEFT=11
    int32 JOINT_HIP_RIGHT=12
    int32 JOINT_KNEE_LEFT=13
    int32 JOINT_KNEE_RIGHT=14
    int32 JOINT_NECK=15
    int32 JOINT_SHOULDER_LEFT=16
    int32 JOINT_SHOULDER_RIGHT=17
    int32 JOINT_SPINE_BASE=18
    int32 JOINT_SPINE_MID=19
    int32 JOINT_SPINE_SHOULDER=20
    int32 JOINT_THUMB_LEFT=21
    int32 JOINT_THUMB_RIGHT=22
    int32 JOINT_WRIST_LEFT=23
    int32 JOINT_WRIST_RIGHT=24
    int32 JOINT_UNKNOWN=25
    
    ================================================================================
    MSG: realsense_ros_person/Gestures
    Pointing pointing
    Wave wave
    
    ================================================================================
    MSG: realsense_ros_person/Pointing
    int32 confidence
    geometry_msgs/Point32 originColor
    geometry_msgs/Point32 originWorld
    geometry_msgs/Point32 orientationColor
    geometry_msgs/Vector3 orientationWorld
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: realsense_ros_person/Wave
    int32 type
    
    #Wave gesture types
    int32 WAVE_NOT_DETECTED=-1 # Wave not detected 
    int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area
    int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area
    int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area
    int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrameTest(null);
    if (msg.colorImage !== undefined) {
      resolved.colorImage = sensor_msgs.msg.Image.Resolve(msg.colorImage)
    }
    else {
      resolved.colorImage = new sensor_msgs.msg.Image()
    }

    if (msg.frameData !== undefined) {
      resolved.frameData = Frame.Resolve(msg.frameData)
    }
    else {
      resolved.frameData = new Frame()
    }

    return resolved;
    }
};

module.exports = FrameTest;
