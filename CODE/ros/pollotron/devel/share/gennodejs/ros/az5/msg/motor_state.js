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

class motor_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.M1 = null;
      this.M2 = null;
      this.M3 = null;
      this.M4 = null;
    }
    else {
      if (initObj.hasOwnProperty('M1')) {
        this.M1 = initObj.M1
      }
      else {
        this.M1 = false;
      }
      if (initObj.hasOwnProperty('M2')) {
        this.M2 = initObj.M2
      }
      else {
        this.M2 = false;
      }
      if (initObj.hasOwnProperty('M3')) {
        this.M3 = initObj.M3
      }
      else {
        this.M3 = false;
      }
      if (initObj.hasOwnProperty('M4')) {
        this.M4 = initObj.M4
      }
      else {
        this.M4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_state
    // Serialize message field [M1]
    bufferOffset = _serializer.bool(obj.M1, buffer, bufferOffset);
    // Serialize message field [M2]
    bufferOffset = _serializer.bool(obj.M2, buffer, bufferOffset);
    // Serialize message field [M3]
    bufferOffset = _serializer.bool(obj.M3, buffer, bufferOffset);
    // Serialize message field [M4]
    bufferOffset = _serializer.bool(obj.M4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_state
    let len;
    let data = new motor_state(null);
    // Deserialize message field [M1]
    data.M1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [M2]
    data.M2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [M3]
    data.M3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [M4]
    data.M4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'az5/motor_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7108cdd472cdbecdeda4bfb217c695c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool M1
    bool M2
    bool M3
    bool M4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_state(null);
    if (msg.M1 !== undefined) {
      resolved.M1 = msg.M1;
    }
    else {
      resolved.M1 = false
    }

    if (msg.M2 !== undefined) {
      resolved.M2 = msg.M2;
    }
    else {
      resolved.M2 = false
    }

    if (msg.M3 !== undefined) {
      resolved.M3 = msg.M3;
    }
    else {
      resolved.M3 = false
    }

    if (msg.M4 !== undefined) {
      resolved.M4 = msg.M4;
    }
    else {
      resolved.M4 = false
    }

    return resolved;
    }
};

module.exports = motor_state;
