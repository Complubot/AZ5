// Auto-generated. Do not edit!

// (in-package az5.msg)


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
      this.us = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('us')) {
        this.us = initObj.us
      }
      else {
        this.us = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultrasounds
    // Serialize message field [us]
    bufferOffset = _serializer.int32(obj.us, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultrasounds
    let len;
    let data = new ultrasounds(null);
    // Deserialize message field [us]
    data.us = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'az5/ultrasounds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e30bc51109991e924faa9021922381b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 us
    int32 value
    int32 length = 16
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultrasounds(null);
    if (msg.us !== undefined) {
      resolved.us = msg.us;
    }
    else {
      resolved.us = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
ultrasounds.Constants = {
  LENGTH: 16,
}

module.exports = ultrasounds;
