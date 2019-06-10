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

class raw_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RX = null;
      this.RY = null;
      this.LX = null;
      this.LY = null;
    }
    else {
      if (initObj.hasOwnProperty('RX')) {
        this.RX = initObj.RX
      }
      else {
        this.RX = 0;
      }
      if (initObj.hasOwnProperty('RY')) {
        this.RY = initObj.RY
      }
      else {
        this.RY = 0;
      }
      if (initObj.hasOwnProperty('LX')) {
        this.LX = initObj.LX
      }
      else {
        this.LX = 0;
      }
      if (initObj.hasOwnProperty('LY')) {
        this.LY = initObj.LY
      }
      else {
        this.LY = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type raw_controller
    // Serialize message field [RX]
    bufferOffset = _serializer.int8(obj.RX, buffer, bufferOffset);
    // Serialize message field [RY]
    bufferOffset = _serializer.int8(obj.RY, buffer, bufferOffset);
    // Serialize message field [LX]
    bufferOffset = _serializer.int8(obj.LX, buffer, bufferOffset);
    // Serialize message field [LY]
    bufferOffset = _serializer.int8(obj.LY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type raw_controller
    let len;
    let data = new raw_controller(null);
    // Deserialize message field [RX]
    data.RX = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RY]
    data.RY = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [LX]
    data.LX = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [LY]
    data.LY = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/raw_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '261f1b7f011b5fc47b397e357aa3b674';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 RX
    int8 RY
    int8 LX
    int8 LY
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new raw_controller(null);
    if (msg.RX !== undefined) {
      resolved.RX = msg.RX;
    }
    else {
      resolved.RX = 0
    }

    if (msg.RY !== undefined) {
      resolved.RY = msg.RY;
    }
    else {
      resolved.RY = 0
    }

    if (msg.LX !== undefined) {
      resolved.LX = msg.LX;
    }
    else {
      resolved.LX = 0
    }

    if (msg.LY !== undefined) {
      resolved.LY = msg.LY;
    }
    else {
      resolved.LY = 0
    }

    return resolved;
    }
};

module.exports = raw_controller;
