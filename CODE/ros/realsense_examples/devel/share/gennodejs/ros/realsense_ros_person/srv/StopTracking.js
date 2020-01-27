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

class StopTrackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.personId = null;
    }
    else {
      if (initObj.hasOwnProperty('personId')) {
        this.personId = initObj.personId
      }
      else {
        this.personId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopTrackingRequest
    // Serialize message field [personId]
    bufferOffset = _serializer.int32(obj.personId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopTrackingRequest
    let len;
    let data = new StopTrackingRequest(null);
    // Deserialize message field [personId]
    data.personId = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/StopTrackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d4730fa7bd1fbdf419fdc75b1b7e004';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 personId
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopTrackingRequest(null);
    if (msg.personId !== undefined) {
      resolved.personId = msg.personId;
    }
    else {
      resolved.personId = 0
    }

    return resolved;
    }
};

class StopTrackingResponse {
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
    // Serializes a message object of type StopTrackingResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopTrackingResponse
    let len;
    let data = new StopTrackingResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/StopTrackingResponse';
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
    const resolved = new StopTrackingResponse(null);
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
  Request: StopTrackingRequest,
  Response: StopTrackingResponse,
  md5sum() { return '1b7f90a77bc2f8f3c4e3d407153b5435'; },
  datatype() { return 'realsense_ros_person/StopTracking'; }
};
