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

class RecognitionRegisterRequest {
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
    // Serializes a message object of type RecognitionRegisterRequest
    // Serialize message field [personId]
    bufferOffset = _serializer.int32(obj.personId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognitionRegisterRequest
    let len;
    let data = new RecognitionRegisterRequest(null);
    // Deserialize message field [personId]
    data.personId = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/RecognitionRegisterRequest';
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
    const resolved = new RecognitionRegisterRequest(null);
    if (msg.personId !== undefined) {
      resolved.personId = msg.personId;
    }
    else {
      resolved.personId = 0
    }

    return resolved;
    }
};

class RecognitionRegisterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.recognitionId = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('recognitionId')) {
        this.recognitionId = initObj.recognitionId
      }
      else {
        this.recognitionId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognitionRegisterResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [recognitionId]
    bufferOffset = _serializer.int32(obj.recognitionId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognitionRegisterResponse
    let len;
    let data = new RecognitionRegisterResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [recognitionId]
    data.recognitionId = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/RecognitionRegisterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e27d8516c4e2e6a0dca385b76894dcd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    int32 recognitionId
    
    
    int32 REGISTRATION_SUCCESSFULL=0
    int32 REGISTRATION_FAILED=1
    int32 REGISTRATION_FAILED_ALREADY_REGISTERED=2
    int32 REGISTRATION_FAILED_FACE_NOT_DETECTED=3
    int32 REGISTRATION_FAILED_FACE_NOT_CLEAR=4
    int32 REGISTRATION_FAILED_PERSON_TO_FAR=5
    int32 REGISTRATION_FAILED_PERSON_TO_CLOSE=6
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognitionRegisterResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.recognitionId !== undefined) {
      resolved.recognitionId = msg.recognitionId;
    }
    else {
      resolved.recognitionId = 0
    }

    return resolved;
    }
};

// Constants for message
RecognitionRegisterResponse.Constants = {
  REGISTRATION_SUCCESSFULL: 0,
  REGISTRATION_FAILED: 1,
  REGISTRATION_FAILED_ALREADY_REGISTERED: 2,
  REGISTRATION_FAILED_FACE_NOT_DETECTED: 3,
  REGISTRATION_FAILED_FACE_NOT_CLEAR: 4,
  REGISTRATION_FAILED_PERSON_TO_FAR: 5,
  REGISTRATION_FAILED_PERSON_TO_CLOSE: 6,
}

module.exports = {
  Request: RecognitionRegisterRequest,
  Response: RecognitionRegisterResponse,
  md5sum() { return 'a15e83a449eea8ad719fcbd487f8e4ca'; },
  datatype() { return 'realsense_ros_person/RecognitionRegister'; }
};
