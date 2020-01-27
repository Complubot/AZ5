// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EulerAngles = require('./EulerAngles.js');

//-----------------------------------------------------------

class EulerAnglesWithConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = new EulerAngles();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAnglesWithConfidence
    // Serialize message field [angles]
    bufferOffset = EulerAngles.serialize(obj.angles, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.int32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAnglesWithConfidence
    let len;
    let data = new EulerAnglesWithConfidence(null);
    // Deserialize message field [angles]
    data.angles = EulerAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/EulerAnglesWithConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e76354a4d10460adcef4d7d5dd74f1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EulerAngles angles
    int32 confidence
    
    ================================================================================
    MSG: realsense_ros_person/EulerAngles
    float32 pitch
    float32 roll
    float32 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EulerAnglesWithConfidence(null);
    if (msg.angles !== undefined) {
      resolved.angles = EulerAngles.Resolve(msg.angles)
    }
    else {
      resolved.angles = new EulerAngles()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    return resolved;
    }
};

module.exports = EulerAnglesWithConfidence;
