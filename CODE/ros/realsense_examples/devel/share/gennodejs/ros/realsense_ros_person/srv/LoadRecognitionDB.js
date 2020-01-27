// Auto-generated. Do not edit!

// (in-package realsense_ros_person.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LoadRecognitionDBRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loadFromPath = null;
    }
    else {
      if (initObj.hasOwnProperty('loadFromPath')) {
        this.loadFromPath = initObj.loadFromPath
      }
      else {
        this.loadFromPath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadRecognitionDBRequest
    // Serialize message field [loadFromPath]
    bufferOffset = _serializer.string(obj.loadFromPath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadRecognitionDBRequest
    let len;
    let data = new LoadRecognitionDBRequest(null);
    // Deserialize message field [loadFromPath]
    data.loadFromPath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.loadFromPath.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/LoadRecognitionDBRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75bd894c03d881eed7a2d0484160e542';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string loadFromPath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadRecognitionDBRequest(null);
    if (msg.loadFromPath !== undefined) {
      resolved.loadFromPath = msg.loadFromPath;
    }
    else {
      resolved.loadFromPath = ''
    }

    return resolved;
    }
};

class LoadRecognitionDBResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadRecognitionDBResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadRecognitionDBResponse
    let len;
    let data = new LoadRecognitionDBResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/LoadRecognitionDBResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadRecognitionDBResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LoadRecognitionDBRequest,
  Response: LoadRecognitionDBResponse,
  md5sum() { return '1831e0f589127bcbfbf3f10b978cf7a3'; },
  datatype() { return 'realsense_ros_person/LoadRecognitionDB'; }
};
