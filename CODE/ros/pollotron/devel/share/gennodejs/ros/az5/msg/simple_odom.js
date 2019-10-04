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

class simple_odom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_pos = null;
      this.y_pos = null;
      this.z_pos = null;
      this.x_vel = null;
      this.y_vel = null;
      this.z_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('z_pos')) {
        this.z_pos = initObj.z_pos
      }
      else {
        this.z_pos = 0.0;
      }
      if (initObj.hasOwnProperty('x_vel')) {
        this.x_vel = initObj.x_vel
      }
      else {
        this.x_vel = 0.0;
      }
      if (initObj.hasOwnProperty('y_vel')) {
        this.y_vel = initObj.y_vel
      }
      else {
        this.y_vel = 0.0;
      }
      if (initObj.hasOwnProperty('z_vel')) {
        this.z_vel = initObj.z_vel
      }
      else {
        this.z_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simple_odom
    // Serialize message field [x_pos]
    bufferOffset = _serializer.float64(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.float64(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [z_pos]
    bufferOffset = _serializer.float64(obj.z_pos, buffer, bufferOffset);
    // Serialize message field [x_vel]
    bufferOffset = _serializer.float64(obj.x_vel, buffer, bufferOffset);
    // Serialize message field [y_vel]
    bufferOffset = _serializer.float64(obj.y_vel, buffer, bufferOffset);
    // Serialize message field [z_vel]
    bufferOffset = _serializer.float64(obj.z_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simple_odom
    let len;
    let data = new simple_odom(null);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_pos]
    data.z_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_vel]
    data.x_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_vel]
    data.y_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_vel]
    data.z_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'az5/simple_odom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22ab75215cf03e4c6396d04a16d3439c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 x_pos
    float64 y_pos
    float64 z_pos
    float64 x_vel
    float64 y_vel
    float64 z_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simple_odom(null);
    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0.0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0.0
    }

    if (msg.z_pos !== undefined) {
      resolved.z_pos = msg.z_pos;
    }
    else {
      resolved.z_pos = 0.0
    }

    if (msg.x_vel !== undefined) {
      resolved.x_vel = msg.x_vel;
    }
    else {
      resolved.x_vel = 0.0
    }

    if (msg.y_vel !== undefined) {
      resolved.y_vel = msg.y_vel;
    }
    else {
      resolved.y_vel = 0.0
    }

    if (msg.z_vel !== undefined) {
      resolved.z_vel = msg.z_vel;
    }
    else {
      resolved.z_vel = 0.0
    }

    return resolved;
    }
};

module.exports = simple_odom;
