// Auto-generated. Do not edit!

// (in-package realsense_ros_object.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');

//-----------------------------------------------------------

class ObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('objects_vector')) {
        this.objects_vector = initObj.objects_vector
      }
      else {
        this.objects_vector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectArray
    // Serialize message field [objects_vector]
    // Serialize the length for message field [objects_vector]
    bufferOffset = _serializer.uint32(obj.objects_vector.length, buffer, bufferOffset);
    obj.objects_vector.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectArray
    let len;
    let data = new ObjectArray(null);
    // Deserialize message field [objects_vector]
    // Deserialize array length for message field [objects_vector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects_vector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects_vector[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects_vector.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/ObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0eaf0f4593b2bff3780b9347ff0665f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Object[] objects_vector
    
    ================================================================================
    MSG: realsense_ros_object/Object
    int32 label
    string object_name
    float32 probability
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectArray(null);
    if (msg.objects_vector !== undefined) {
      resolved.objects_vector = new Array(msg.objects_vector.length);
      for (let i = 0; i < resolved.objects_vector.length; ++i) {
        resolved.objects_vector[i] = Object.Resolve(msg.objects_vector[i]);
      }
    }
    else {
      resolved.objects_vector = []
    }

    return resolved;
    }
};

module.exports = ObjectArray;
