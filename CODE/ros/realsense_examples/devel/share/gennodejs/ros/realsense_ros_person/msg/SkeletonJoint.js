// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SkeletonJoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.confidence = null;
      this.location = null;
      this.realWorldCoordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('realWorldCoordinates')) {
        this.realWorldCoordinates = initObj.realWorldCoordinates
      }
      else {
        this.realWorldCoordinates = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SkeletonJoint
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [realWorldCoordinates]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.realWorldCoordinates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SkeletonJoint
    let len;
    let data = new SkeletonJoint(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [realWorldCoordinates]
    data.realWorldCoordinates = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/SkeletonJoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfca6d8f4a6c4e847fc126d5f1b7b05b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SkeletonJoint(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Point.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Point()
    }

    if (msg.realWorldCoordinates !== undefined) {
      resolved.realWorldCoordinates = geometry_msgs.msg.Point32.Resolve(msg.realWorldCoordinates)
    }
    else {
      resolved.realWorldCoordinates = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

// Constants for message
SkeletonJoint.Constants = {
  JOINT_ANKLE_LEFT: 0,
  JOINT_ANKLE_RIGHT: 1,
  JOINT_ELBOW_LEFT: 2,
  JOINT_ELBOW_RIGHT: 3,
  JOINT_FOOT_LEFT: 4,
  JOINT_FOOT_RIGHT: 5,
  JOINT_HAND_LEFT: 6,
  JOINT_HAND_RIGHT: 7,
  JOINT_HAND_TIP_LEFT: 8,
  JOINT_HAND_TIP_RIGHT: 9,
  JOINT_HEAD: 10,
  JOINT_HIP_LEFT: 11,
  JOINT_HIP_RIGHT: 12,
  JOINT_KNEE_LEFT: 13,
  JOINT_KNEE_RIGHT: 14,
  JOINT_NECK: 15,
  JOINT_SHOULDER_LEFT: 16,
  JOINT_SHOULDER_RIGHT: 17,
  JOINT_SPINE_BASE: 18,
  JOINT_SPINE_MID: 19,
  JOINT_SPINE_SHOULDER: 20,
  JOINT_THUMB_LEFT: 21,
  JOINT_THUMB_RIGHT: 22,
  JOINT_WRIST_LEFT: 23,
  JOINT_WRIST_RIGHT: 24,
  JOINT_UNKNOWN: 25,
}

module.exports = SkeletonJoint;
