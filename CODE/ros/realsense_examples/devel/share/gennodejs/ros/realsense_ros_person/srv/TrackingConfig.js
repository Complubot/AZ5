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

class TrackingConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableRecognition = null;
      this.enableSkeleton = null;
      this.enablePointingGesture = null;
      this.enableWaveGesture = null;
      this.enableLandmarks = null;
      this.enableHeadBoundingBox = null;
      this.enableHeadPose = null;
    }
    else {
      if (initObj.hasOwnProperty('enableRecognition')) {
        this.enableRecognition = initObj.enableRecognition
      }
      else {
        this.enableRecognition = false;
      }
      if (initObj.hasOwnProperty('enableSkeleton')) {
        this.enableSkeleton = initObj.enableSkeleton
      }
      else {
        this.enableSkeleton = false;
      }
      if (initObj.hasOwnProperty('enablePointingGesture')) {
        this.enablePointingGesture = initObj.enablePointingGesture
      }
      else {
        this.enablePointingGesture = false;
      }
      if (initObj.hasOwnProperty('enableWaveGesture')) {
        this.enableWaveGesture = initObj.enableWaveGesture
      }
      else {
        this.enableWaveGesture = false;
      }
      if (initObj.hasOwnProperty('enableLandmarks')) {
        this.enableLandmarks = initObj.enableLandmarks
      }
      else {
        this.enableLandmarks = false;
      }
      if (initObj.hasOwnProperty('enableHeadBoundingBox')) {
        this.enableHeadBoundingBox = initObj.enableHeadBoundingBox
      }
      else {
        this.enableHeadBoundingBox = false;
      }
      if (initObj.hasOwnProperty('enableHeadPose')) {
        this.enableHeadPose = initObj.enableHeadPose
      }
      else {
        this.enableHeadPose = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingConfigRequest
    // Serialize message field [enableRecognition]
    bufferOffset = _serializer.bool(obj.enableRecognition, buffer, bufferOffset);
    // Serialize message field [enableSkeleton]
    bufferOffset = _serializer.bool(obj.enableSkeleton, buffer, bufferOffset);
    // Serialize message field [enablePointingGesture]
    bufferOffset = _serializer.bool(obj.enablePointingGesture, buffer, bufferOffset);
    // Serialize message field [enableWaveGesture]
    bufferOffset = _serializer.bool(obj.enableWaveGesture, buffer, bufferOffset);
    // Serialize message field [enableLandmarks]
    bufferOffset = _serializer.bool(obj.enableLandmarks, buffer, bufferOffset);
    // Serialize message field [enableHeadBoundingBox]
    bufferOffset = _serializer.bool(obj.enableHeadBoundingBox, buffer, bufferOffset);
    // Serialize message field [enableHeadPose]
    bufferOffset = _serializer.bool(obj.enableHeadPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingConfigRequest
    let len;
    let data = new TrackingConfigRequest(null);
    // Deserialize message field [enableRecognition]
    data.enableRecognition = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableSkeleton]
    data.enableSkeleton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enablePointingGesture]
    data.enablePointingGesture = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableWaveGesture]
    data.enableWaveGesture = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableLandmarks]
    data.enableLandmarks = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableHeadBoundingBox]
    data.enableHeadBoundingBox = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableHeadPose]
    data.enableHeadPose = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/TrackingConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '686ca0728cbcd739a9efb35cc7c81a46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableRecognition
    bool enableSkeleton
    bool enablePointingGesture
    bool enableWaveGesture
    bool enableLandmarks
    bool enableHeadBoundingBox
    bool enableHeadPose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackingConfigRequest(null);
    if (msg.enableRecognition !== undefined) {
      resolved.enableRecognition = msg.enableRecognition;
    }
    else {
      resolved.enableRecognition = false
    }

    if (msg.enableSkeleton !== undefined) {
      resolved.enableSkeleton = msg.enableSkeleton;
    }
    else {
      resolved.enableSkeleton = false
    }

    if (msg.enablePointingGesture !== undefined) {
      resolved.enablePointingGesture = msg.enablePointingGesture;
    }
    else {
      resolved.enablePointingGesture = false
    }

    if (msg.enableWaveGesture !== undefined) {
      resolved.enableWaveGesture = msg.enableWaveGesture;
    }
    else {
      resolved.enableWaveGesture = false
    }

    if (msg.enableLandmarks !== undefined) {
      resolved.enableLandmarks = msg.enableLandmarks;
    }
    else {
      resolved.enableLandmarks = false
    }

    if (msg.enableHeadBoundingBox !== undefined) {
      resolved.enableHeadBoundingBox = msg.enableHeadBoundingBox;
    }
    else {
      resolved.enableHeadBoundingBox = false
    }

    if (msg.enableHeadPose !== undefined) {
      resolved.enableHeadPose = msg.enableHeadPose;
    }
    else {
      resolved.enableHeadPose = false
    }

    return resolved;
    }
};

class TrackingConfigResponse {
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
    // Serializes a message object of type TrackingConfigResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingConfigResponse
    let len;
    let data = new TrackingConfigResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'realsense_ros_person/TrackingConfigResponse';
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
    const resolved = new TrackingConfigResponse(null);
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
  Request: TrackingConfigRequest,
  Response: TrackingConfigResponse,
  md5sum() { return '78e03ba522060c37577ef42678654b8c'; },
  datatype() { return 'realsense_ros_person/TrackingConfig'; }
};
