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

class bumpers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LEFT = null;
      this.RIGHT = null;
      this.FRONT = null;
      this.BACK = null;
    }
    else {
      if (initObj.hasOwnProperty('LEFT')) {
        this.LEFT = initObj.LEFT
      }
      else {
        this.LEFT = false;
      }
      if (initObj.hasOwnProperty('RIGHT')) {
        this.RIGHT = initObj.RIGHT
      }
      else {
        this.RIGHT = false;
      }
      if (initObj.hasOwnProperty('FRONT')) {
        this.FRONT = initObj.FRONT
      }
      else {
        this.FRONT = false;
      }
      if (initObj.hasOwnProperty('BACK')) {
        this.BACK = initObj.BACK
      }
      else {
        this.BACK = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bumpers
    // Serialize message field [LEFT]
    bufferOffset = _serializer.bool(obj.LEFT, buffer, bufferOffset);
    // Serialize message field [RIGHT]
    bufferOffset = _serializer.bool(obj.RIGHT, buffer, bufferOffset);
    // Serialize message field [FRONT]
    bufferOffset = _serializer.bool(obj.FRONT, buffer, bufferOffset);
    // Serialize message field [BACK]
    bufferOffset = _serializer.bool(obj.BACK, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bumpers
    let len;
    let data = new bumpers(null);
    // Deserialize message field [LEFT]
    data.LEFT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RIGHT]
    data.RIGHT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [FRONT]
    data.FRONT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [BACK]
    data.BACK = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'az5/bumpers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b9e708bc1320c04ab698dfe0ba605f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool LEFT
    bool RIGHT
    bool FRONT
    bool BACK
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bumpers(null);
    if (msg.LEFT !== undefined) {
      resolved.LEFT = msg.LEFT;
    }
    else {
      resolved.LEFT = false
    }

    if (msg.RIGHT !== undefined) {
      resolved.RIGHT = msg.RIGHT;
    }
    else {
      resolved.RIGHT = false
    }

    if (msg.FRONT !== undefined) {
      resolved.FRONT = msg.FRONT;
    }
    else {
      resolved.FRONT = false
    }

    if (msg.BACK !== undefined) {
      resolved.BACK = msg.BACK;
    }
    else {
      resolved.BACK = false
    }

    return resolved;
    }
};

module.exports = bumpers;
