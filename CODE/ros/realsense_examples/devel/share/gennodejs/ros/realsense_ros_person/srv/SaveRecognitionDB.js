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

class SaveRecognitionDBRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.saveToPath = null;
    }
    else {
      if (initObj.hasOwnProperty('saveToPath')) {
        this.saveToPath = initObj.saveToPath
      }
      else {
        this.saveToPath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRecognitionDBRequest
    // Serialize message field [saveToPath]
    bufferOffset = _serializer.string(obj.saveToPath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRecognitionDBRequest
    let len;
    let data = new SaveRecognitionDBRequest(null);
    // Deserialize message field [saveToPath]
    data.saveToPath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.saveToPath.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/SaveRecognitionDBRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6f54f323bfdd90f5dc74498f19562e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string saveToPath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveRecognitionDBRequest(null);
    if (msg.saveToPath !== undefined) {
      resolved.saveToPath = msg.saveToPath;
    }
    else {
      resolved.saveToPath = ''
    }

    return resolved;
    }
};

class SaveRecognitionDBResponse {
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
    // Serializes a message object of type SaveRecognitionDBResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRecognitionDBResponse
    let len;
    let data = new SaveRecognitionDBResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/SaveRecognitionDBResponse';
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
    const resolved = new SaveRecognitionDBResponse(null);
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
  Request: SaveRecognitionDBRequest,
  Response: SaveRecognitionDBResponse,
  md5sum() { return '1de971d723014a924e8ac6f15d9d1728'; },
  datatype() { return 'realsense_ros_person/SaveRecognitionDB'; }
};
