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

class RecognitionRequest {
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
    // Serializes a message object of type RecognitionRequest
    // Serialize message field [personId]
    bufferOffset = _serializer.int32(obj.personId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognitionRequest
    let len;
    let data = new RecognitionRequest(null);
    // Deserialize message field [personId]
    data.personId = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/RecognitionRequest';
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
    const resolved = new RecognitionRequest(null);
    if (msg.personId !== undefined) {
      resolved.personId = msg.personId;
    }
    else {
      resolved.personId = 0
    }

    return resolved;
    }
};

class RecognitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.recognitionId = null;
      this.similarityScore = null;
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
      if (initObj.hasOwnProperty('similarityScore')) {
        this.similarityScore = initObj.similarityScore
      }
      else {
        this.similarityScore = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognitionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [recognitionId]
    bufferOffset = _serializer.int32(obj.recognitionId, buffer, bufferOffset);
    // Serialize message field [similarityScore]
    bufferOffset = _serializer.float32(obj.similarityScore, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognitionResponse
    let len;
    let data = new RecognitionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [recognitionId]
    data.recognitionId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [similarityScore]
    data.similarityScore = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/RecognitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10f761f45f5fdb424410b79e3dc54b21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    int32 recognitionId
    float32 similarityScore
    
    
    int32 RECOGNITION_PASSED_PERSON_RECOGNIZED=0
    int32 RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED=1
    int32 RECOGNITION_FAILED=2
    int32 RECOGNITION_FAILED_FACE_NOT_DETECTED=3
    int32 RECOGNITION_FAILED_FACE_NOT_CLEAR=4
    int32 RECOGNITION_FAILED_PERSON_TOO_FAR=5
    int32 RECOGNITION_FAILED_PERSON_TOO_CLOSE=6
    int32 RECOGNITION_FAILED_FACE_AMBIGUITY=7
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognitionResponse(null);
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

    if (msg.similarityScore !== undefined) {
      resolved.similarityScore = msg.similarityScore;
    }
    else {
      resolved.similarityScore = 0.0
    }

    return resolved;
    }
};

// Constants for message
RecognitionResponse.Constants = {
  RECOGNITION_PASSED_PERSON_RECOGNIZED: 0,
  RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED: 1,
  RECOGNITION_FAILED: 2,
  RECOGNITION_FAILED_FACE_NOT_DETECTED: 3,
  RECOGNITION_FAILED_FACE_NOT_CLEAR: 4,
  RECOGNITION_FAILED_PERSON_TOO_FAR: 5,
  RECOGNITION_FAILED_PERSON_TOO_CLOSE: 6,
  RECOGNITION_FAILED_FACE_AMBIGUITY: 7,
}

module.exports = {
  Request: RecognitionRequest,
  Response: RecognitionResponse,
  md5sum() { return '2dd06767416b8aa59aeaa12368ef46df'; },
  datatype() { return 'realsense_ros_person/Recognition'; }
};
