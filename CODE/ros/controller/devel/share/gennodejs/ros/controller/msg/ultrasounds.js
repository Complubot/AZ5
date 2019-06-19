// Auto-generated. Do not edit!

// (in-package controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ultrasounds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.measurements = null;
    }
    else {
      if (initObj.hasOwnProperty('measurements')) {
        this.measurements = initObj.measurements
      }
      else {
        this.measurements = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultrasounds
    // Check that the constant length array field [measurements] has the right length
    if (obj.measurements.length !== 16) {
      throw new Error('Unable to serialize array field measurements - length must be 16')
    }
    // Serialize message field [measurements]
    bufferOffset = _arraySerializer.int32(obj.measurements, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultrasounds
    let len;
    let data = new ultrasounds(null);
    // Deserialize message field [measurements]
    data.measurements = _arrayDeserializer.int32(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/ultrasounds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09e96d0ffc1d31ca0f72f6408aaa1e7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[16] measurements
    int32 length = 16
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultrasounds(null);
    if (msg.measurements !== undefined) {
      resolved.measurements = msg.measurements;
    }
    else {
      resolved.measurements = new Array(16).fill(0)
    }

    return resolved;
    }
};

// Constants for message
ultrasounds.Constants = {
  LENGTH: 16,
}

module.exports = ultrasounds;
