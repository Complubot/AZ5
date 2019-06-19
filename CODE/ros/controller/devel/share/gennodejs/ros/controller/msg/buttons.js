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

class buttons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TRIANGLE = null;
      this.CIRCLE = null;
      this.SQUARE = null;
      this.CROSS = null;
      this.UP = null;
      this.DOWN = null;
      this.LEFT = null;
      this.RIGHT = null;
      this.R1 = null;
      this.R2 = null;
      this.L1 = null;
      this.L2 = null;
    }
    else {
      if (initObj.hasOwnProperty('TRIANGLE')) {
        this.TRIANGLE = initObj.TRIANGLE
      }
      else {
        this.TRIANGLE = false;
      }
      if (initObj.hasOwnProperty('CIRCLE')) {
        this.CIRCLE = initObj.CIRCLE
      }
      else {
        this.CIRCLE = false;
      }
      if (initObj.hasOwnProperty('SQUARE')) {
        this.SQUARE = initObj.SQUARE
      }
      else {
        this.SQUARE = false;
      }
      if (initObj.hasOwnProperty('CROSS')) {
        this.CROSS = initObj.CROSS
      }
      else {
        this.CROSS = false;
      }
      if (initObj.hasOwnProperty('UP')) {
        this.UP = initObj.UP
      }
      else {
        this.UP = false;
      }
      if (initObj.hasOwnProperty('DOWN')) {
        this.DOWN = initObj.DOWN
      }
      else {
        this.DOWN = false;
      }
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
      if (initObj.hasOwnProperty('R1')) {
        this.R1 = initObj.R1
      }
      else {
        this.R1 = false;
      }
      if (initObj.hasOwnProperty('R2')) {
        this.R2 = initObj.R2
      }
      else {
        this.R2 = false;
      }
      if (initObj.hasOwnProperty('L1')) {
        this.L1 = initObj.L1
      }
      else {
        this.L1 = false;
      }
      if (initObj.hasOwnProperty('L2')) {
        this.L2 = initObj.L2
      }
      else {
        this.L2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buttons
    // Serialize message field [TRIANGLE]
    bufferOffset = _serializer.bool(obj.TRIANGLE, buffer, bufferOffset);
    // Serialize message field [CIRCLE]
    bufferOffset = _serializer.bool(obj.CIRCLE, buffer, bufferOffset);
    // Serialize message field [SQUARE]
    bufferOffset = _serializer.bool(obj.SQUARE, buffer, bufferOffset);
    // Serialize message field [CROSS]
    bufferOffset = _serializer.bool(obj.CROSS, buffer, bufferOffset);
    // Serialize message field [UP]
    bufferOffset = _serializer.bool(obj.UP, buffer, bufferOffset);
    // Serialize message field [DOWN]
    bufferOffset = _serializer.bool(obj.DOWN, buffer, bufferOffset);
    // Serialize message field [LEFT]
    bufferOffset = _serializer.bool(obj.LEFT, buffer, bufferOffset);
    // Serialize message field [RIGHT]
    bufferOffset = _serializer.bool(obj.RIGHT, buffer, bufferOffset);
    // Serialize message field [R1]
    bufferOffset = _serializer.bool(obj.R1, buffer, bufferOffset);
    // Serialize message field [R2]
    bufferOffset = _serializer.bool(obj.R2, buffer, bufferOffset);
    // Serialize message field [L1]
    bufferOffset = _serializer.bool(obj.L1, buffer, bufferOffset);
    // Serialize message field [L2]
    bufferOffset = _serializer.bool(obj.L2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buttons
    let len;
    let data = new buttons(null);
    // Deserialize message field [TRIANGLE]
    data.TRIANGLE = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CIRCLE]
    data.CIRCLE = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SQUARE]
    data.SQUARE = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CROSS]
    data.CROSS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [UP]
    data.UP = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [DOWN]
    data.DOWN = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LEFT]
    data.LEFT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RIGHT]
    data.RIGHT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R1]
    data.R1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R2]
    data.R2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [L1]
    data.L1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [L2]
    data.L2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/buttons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7013f4c34338e575015a24a638b00725';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool TRIANGLE
    bool CIRCLE
    bool SQUARE
    bool CROSS
    
    bool UP
    bool DOWN
    bool LEFT
    bool RIGHT
    
    
    bool R1
    bool R2
    bool L1
    bool L2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new buttons(null);
    if (msg.TRIANGLE !== undefined) {
      resolved.TRIANGLE = msg.TRIANGLE;
    }
    else {
      resolved.TRIANGLE = false
    }

    if (msg.CIRCLE !== undefined) {
      resolved.CIRCLE = msg.CIRCLE;
    }
    else {
      resolved.CIRCLE = false
    }

    if (msg.SQUARE !== undefined) {
      resolved.SQUARE = msg.SQUARE;
    }
    else {
      resolved.SQUARE = false
    }

    if (msg.CROSS !== undefined) {
      resolved.CROSS = msg.CROSS;
    }
    else {
      resolved.CROSS = false
    }

    if (msg.UP !== undefined) {
      resolved.UP = msg.UP;
    }
    else {
      resolved.UP = false
    }

    if (msg.DOWN !== undefined) {
      resolved.DOWN = msg.DOWN;
    }
    else {
      resolved.DOWN = false
    }

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

    if (msg.R1 !== undefined) {
      resolved.R1 = msg.R1;
    }
    else {
      resolved.R1 = false
    }

    if (msg.R2 !== undefined) {
      resolved.R2 = msg.R2;
    }
    else {
      resolved.R2 = false
    }

    if (msg.L1 !== undefined) {
      resolved.L1 = msg.L1;
    }
    else {
      resolved.L1 = false
    }

    if (msg.L2 !== undefined) {
      resolved.L2 = msg.L2;
    }
    else {
      resolved.L2 = false
    }

    return resolved;
    }
};

module.exports = buttons;
