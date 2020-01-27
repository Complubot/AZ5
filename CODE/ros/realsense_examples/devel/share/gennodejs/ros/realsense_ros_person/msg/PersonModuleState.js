// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PersonModuleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isRecognitionEnabled = null;
      this.isSkeletonEnabled = null;
      this.isGesturesEnabled = null;
      this.isLandmarksEnabled = null;
      this.isHeadBoundingBoxEnabled = null;
      this.isHeadPoseEnabled = null;
      this.isTrackingEnabled = null;
      this.trackingState = null;
    }
    else {
      if (initObj.hasOwnProperty('isRecognitionEnabled')) {
        this.isRecognitionEnabled = initObj.isRecognitionEnabled
      }
      else {
        this.isRecognitionEnabled = false;
      }
      if (initObj.hasOwnProperty('isSkeletonEnabled')) {
        this.isSkeletonEnabled = initObj.isSkeletonEnabled
      }
      else {
        this.isSkeletonEnabled = false;
      }
      if (initObj.hasOwnProperty('isGesturesEnabled')) {
        this.isGesturesEnabled = initObj.isGesturesEnabled
      }
      else {
        this.isGesturesEnabled = false;
      }
      if (initObj.hasOwnProperty('isLandmarksEnabled')) {
        this.isLandmarksEnabled = initObj.isLandmarksEnabled
      }
      else {
        this.isLandmarksEnabled = false;
      }
      if (initObj.hasOwnProperty('isHeadBoundingBoxEnabled')) {
        this.isHeadBoundingBoxEnabled = initObj.isHeadBoundingBoxEnabled
      }
      else {
        this.isHeadBoundingBoxEnabled = false;
      }
      if (initObj.hasOwnProperty('isHeadPoseEnabled')) {
        this.isHeadPoseEnabled = initObj.isHeadPoseEnabled
      }
      else {
        this.isHeadPoseEnabled = false;
      }
      if (initObj.hasOwnProperty('isTrackingEnabled')) {
        this.isTrackingEnabled = initObj.isTrackingEnabled
      }
      else {
        this.isTrackingEnabled = false;
      }
      if (initObj.hasOwnProperty('trackingState')) {
        this.trackingState = initObj.trackingState
      }
      else {
        this.trackingState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonModuleState
    // Serialize message field [isRecognitionEnabled]
    bufferOffset = _serializer.bool(obj.isRecognitionEnabled, buffer, bufferOffset);
    // Serialize message field [isSkeletonEnabled]
    bufferOffset = _serializer.bool(obj.isSkeletonEnabled, buffer, bufferOffset);
    // Serialize message field [isGesturesEnabled]
    bufferOffset = _serializer.bool(obj.isGesturesEnabled, buffer, bufferOffset);
    // Serialize message field [isLandmarksEnabled]
    bufferOffset = _serializer.bool(obj.isLandmarksEnabled, buffer, bufferOffset);
    // Serialize message field [isHeadBoundingBoxEnabled]
    bufferOffset = _serializer.bool(obj.isHeadBoundingBoxEnabled, buffer, bufferOffset);
    // Serialize message field [isHeadPoseEnabled]
    bufferOffset = _serializer.bool(obj.isHeadPoseEnabled, buffer, bufferOffset);
    // Serialize message field [isTrackingEnabled]
    bufferOffset = _serializer.bool(obj.isTrackingEnabled, buffer, bufferOffset);
    // Serialize message field [trackingState]
    bufferOffset = _serializer.int32(obj.trackingState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonModuleState
    let len;
    let data = new PersonModuleState(null);
    // Deserialize message field [isRecognitionEnabled]
    data.isRecognitionEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isSkeletonEnabled]
    data.isSkeletonEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isGesturesEnabled]
    data.isGesturesEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isLandmarksEnabled]
    data.isLandmarksEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isHeadBoundingBoxEnabled]
    data.isHeadBoundingBoxEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isHeadPoseEnabled]
    data.isHeadPoseEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isTrackingEnabled]
    data.isTrackingEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trackingState]
    data.trackingState = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/PersonModuleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a004989fab301fe2ac94f9cab839eaed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #features enables/disabled states
    bool isRecognitionEnabled
    bool isSkeletonEnabled
    bool isGesturesEnabled
    bool isLandmarksEnabled
    bool isHeadBoundingBoxEnabled
    bool isHeadPoseEnabled
    bool isTrackingEnabled
    
    #additional states
    int32 trackingState
    
    int32 TRACKING_STATE_TRACKING=0
    int32 TRACKING_STATE_DETECTING=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonModuleState(null);
    if (msg.isRecognitionEnabled !== undefined) {
      resolved.isRecognitionEnabled = msg.isRecognitionEnabled;
    }
    else {
      resolved.isRecognitionEnabled = false
    }

    if (msg.isSkeletonEnabled !== undefined) {
      resolved.isSkeletonEnabled = msg.isSkeletonEnabled;
    }
    else {
      resolved.isSkeletonEnabled = false
    }

    if (msg.isGesturesEnabled !== undefined) {
      resolved.isGesturesEnabled = msg.isGesturesEnabled;
    }
    else {
      resolved.isGesturesEnabled = false
    }

    if (msg.isLandmarksEnabled !== undefined) {
      resolved.isLandmarksEnabled = msg.isLandmarksEnabled;
    }
    else {
      resolved.isLandmarksEnabled = false
    }

    if (msg.isHeadBoundingBoxEnabled !== undefined) {
      resolved.isHeadBoundingBoxEnabled = msg.isHeadBoundingBoxEnabled;
    }
    else {
      resolved.isHeadBoundingBoxEnabled = false
    }

    if (msg.isHeadPoseEnabled !== undefined) {
      resolved.isHeadPoseEnabled = msg.isHeadPoseEnabled;
    }
    else {
      resolved.isHeadPoseEnabled = false
    }

    if (msg.isTrackingEnabled !== undefined) {
      resolved.isTrackingEnabled = msg.isTrackingEnabled;
    }
    else {
      resolved.isTrackingEnabled = false
    }

    if (msg.trackingState !== undefined) {
      resolved.trackingState = msg.trackingState;
    }
    else {
      resolved.trackingState = 0
    }

    return resolved;
    }
};

// Constants for message
PersonModuleState.Constants = {
  TRACKING_STATE_TRACKING: 0,
  TRACKING_STATE_DETECTING: 1,
}

module.exports = PersonModuleState;
