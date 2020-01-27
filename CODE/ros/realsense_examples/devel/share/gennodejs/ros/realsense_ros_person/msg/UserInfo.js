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

class UserInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Id = null;
    }
    else {
      if (initObj.hasOwnProperty('Id')) {
        this.Id = initObj.Id
      }
      else {
        this.Id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserInfo
    // Serialize message field [Id]
    bufferOffset = _serializer.int32(obj.Id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserInfo
    let len;
    let data = new UserInfo(null);
    // Deserialize message field [Id]
    data.Id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/UserInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c256f183ddb18ca1c8cac601691eb32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserInfo(null);
    if (msg.Id !== undefined) {
      resolved.Id = msg.Id;
    }
    else {
      resolved.Id = 0
    }

    return resolved;
    }
};

module.exports = UserInfo;
