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

class Wave {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wave
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wave
    let len;
    let data = new Wave(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/Wave';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf1a205054ef9c51f0b3b2426adfe39a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 type
    
    #Wave gesture types
    int32 WAVE_NOT_DETECTED=-1 # Wave not detected 
    int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area
    int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area
    int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area
    int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wave(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
Wave.Constants = {
  WAVE_NOT_DETECTED: -1,
  WAVE_LEFT_LA: 1,
  WAVE_RIGHT_LA: 2,
  WAVE_LEFT_RA: 3,
  WAVE_RIGHT_RA: 4,
}

module.exports = Wave;
