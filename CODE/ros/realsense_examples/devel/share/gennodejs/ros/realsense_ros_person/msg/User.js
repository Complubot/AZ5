// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UserInfo = require('./UserInfo.js');
let RectWithConfidence = require('./RectWithConfidence.js');
let LandmarksInfo = require('./LandmarksInfo.js');
let EulerAnglesWithConfidence = require('./EulerAnglesWithConfidence.js');
let SkeletonJoint = require('./SkeletonJoint.js');
let Gestures = require('./Gestures.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class User {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.userInfo = null;
      this.centerOfMassImage = null;
      this.centerOfMassWorld = null;
      this.userRect = null;
      this.headBoundingBox = null;
      this.landmarksInfo = null;
      this.headPose = null;
      this.skeletonJoints = null;
      this.gestures = null;
    }
    else {
      if (initObj.hasOwnProperty('userInfo')) {
        this.userInfo = initObj.userInfo
      }
      else {
        this.userInfo = new UserInfo();
      }
      if (initObj.hasOwnProperty('centerOfMassImage')) {
        this.centerOfMassImage = initObj.centerOfMassImage
      }
      else {
        this.centerOfMassImage = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('centerOfMassWorld')) {
        this.centerOfMassWorld = initObj.centerOfMassWorld
      }
      else {
        this.centerOfMassWorld = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('userRect')) {
        this.userRect = initObj.userRect
      }
      else {
        this.userRect = new RectWithConfidence();
      }
      if (initObj.hasOwnProperty('headBoundingBox')) {
        this.headBoundingBox = initObj.headBoundingBox
      }
      else {
        this.headBoundingBox = new RectWithConfidence();
      }
      if (initObj.hasOwnProperty('landmarksInfo')) {
        this.landmarksInfo = initObj.landmarksInfo
      }
      else {
        this.landmarksInfo = new LandmarksInfo();
      }
      if (initObj.hasOwnProperty('headPose')) {
        this.headPose = initObj.headPose
      }
      else {
        this.headPose = new EulerAnglesWithConfidence();
      }
      if (initObj.hasOwnProperty('skeletonJoints')) {
        this.skeletonJoints = initObj.skeletonJoints
      }
      else {
        this.skeletonJoints = [];
      }
      if (initObj.hasOwnProperty('gestures')) {
        this.gestures = initObj.gestures
      }
      else {
        this.gestures = new Gestures();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type User
    // Serialize message field [userInfo]
    bufferOffset = UserInfo.serialize(obj.userInfo, buffer, bufferOffset);
    // Serialize message field [centerOfMassImage]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centerOfMassImage, buffer, bufferOffset);
    // Serialize message field [centerOfMassWorld]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centerOfMassWorld, buffer, bufferOffset);
    // Serialize message field [userRect]
    bufferOffset = RectWithConfidence.serialize(obj.userRect, buffer, bufferOffset);
    // Serialize message field [headBoundingBox]
    bufferOffset = RectWithConfidence.serialize(obj.headBoundingBox, buffer, bufferOffset);
    // Serialize message field [landmarksInfo]
    bufferOffset = LandmarksInfo.serialize(obj.landmarksInfo, buffer, bufferOffset);
    // Serialize message field [headPose]
    bufferOffset = EulerAnglesWithConfidence.serialize(obj.headPose, buffer, bufferOffset);
    // Serialize message field [skeletonJoints]
    // Serialize the length for message field [skeletonJoints]
    bufferOffset = _serializer.uint32(obj.skeletonJoints.length, buffer, bufferOffset);
    obj.skeletonJoints.forEach((val) => {
      bufferOffset = SkeletonJoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gestures]
    bufferOffset = Gestures.serialize(obj.gestures, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type User
    let len;
    let data = new User(null);
    // Deserialize message field [userInfo]
    data.userInfo = UserInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [centerOfMassImage]
    data.centerOfMassImage = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [centerOfMassWorld]
    data.centerOfMassWorld = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [userRect]
    data.userRect = RectWithConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [headBoundingBox]
    data.headBoundingBox = RectWithConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmarksInfo]
    data.landmarksInfo = LandmarksInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [headPose]
    data.headPose = EulerAnglesWithConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [skeletonJoints]
    // Deserialize array length for message field [skeletonJoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.skeletonJoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.skeletonJoints[i] = SkeletonJoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gestures]
    data.gestures = Gestures.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LandmarksInfo.getMessageSize(object.landmarksInfo);
    length += 44 * object.skeletonJoints.length;
    return length + 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/User';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6686a133e9edf3243aaa058301a3c9c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new User(null);
    if (msg.userInfo !== undefined) {
      resolved.userInfo = UserInfo.Resolve(msg.userInfo)
    }
    else {
      resolved.userInfo = new UserInfo()
    }

    if (msg.centerOfMassImage !== undefined) {
      resolved.centerOfMassImage = geometry_msgs.msg.Point32.Resolve(msg.centerOfMassImage)
    }
    else {
      resolved.centerOfMassImage = new geometry_msgs.msg.Point32()
    }

    if (msg.centerOfMassWorld !== undefined) {
      resolved.centerOfMassWorld = geometry_msgs.msg.Point32.Resolve(msg.centerOfMassWorld)
    }
    else {
      resolved.centerOfMassWorld = new geometry_msgs.msg.Point32()
    }

    if (msg.userRect !== undefined) {
      resolved.userRect = RectWithConfidence.Resolve(msg.userRect)
    }
    else {
      resolved.userRect = new RectWithConfidence()
    }

    if (msg.headBoundingBox !== undefined) {
      resolved.headBoundingBox = RectWithConfidence.Resolve(msg.headBoundingBox)
    }
    else {
      resolved.headBoundingBox = new RectWithConfidence()
    }

    if (msg.landmarksInfo !== undefined) {
      resolved.landmarksInfo = LandmarksInfo.Resolve(msg.landmarksInfo)
    }
    else {
      resolved.landmarksInfo = new LandmarksInfo()
    }

    if (msg.headPose !== undefined) {
      resolved.headPose = EulerAnglesWithConfidence.Resolve(msg.headPose)
    }
    else {
      resolved.headPose = new EulerAnglesWithConfidence()
    }

    if (msg.skeletonJoints !== undefined) {
      resolved.skeletonJoints = new Array(msg.skeletonJoints.length);
      for (let i = 0; i < resolved.skeletonJoints.length; ++i) {
        resolved.skeletonJoints[i] = SkeletonJoint.Resolve(msg.skeletonJoints[i]);
      }
    }
    else {
      resolved.skeletonJoints = []
    }

    if (msg.gestures !== undefined) {
      resolved.gestures = Gestures.Resolve(msg.gestures)
    }
    else {
      resolved.gestures = new Gestures()
    }

    return resolved;
    }
};

module.exports = User;
