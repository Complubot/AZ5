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

class max_velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type max_velocity
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 16) {
      throw new Error('Unable to serialize array field data - length must be 16')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int32(obj.data, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type max_velocity
    let len;
    let data = new max_velocity(null);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int32(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/max_velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86cf59839b89372f0df8b1565cb79615';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[16] data
    int32 length = 16
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new max_velocity(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(16).fill(0)
    }

    return resolved;
    }
};

// Constants for message
max_velocity.Constants = {
  LENGTH: 16,
}

module.exports = max_velocity;
