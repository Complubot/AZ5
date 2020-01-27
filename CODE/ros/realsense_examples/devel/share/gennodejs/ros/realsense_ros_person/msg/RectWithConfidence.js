// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RectWithConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confidence = null;
      this.rectCorners = null;
    }
    else {
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
      if (initObj.hasOwnProperty('rectCorners')) {
        this.rectCorners = initObj.rectCorners
      }
      else {
        this.rectCorners = new Array(2).fill(new geometry_msgs.msg.Point32());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RectWithConfidence
    // Serialize message field [confidence]
    bufferOffset = _serializer.int32(obj.confidence, buffer, bufferOffset);
    // Check that the constant length array field [rectCorners] has the right length
    if (obj.rectCorners.length !== 2) {
      throw new Error('Unable to serialize array field rectCorners - length must be 2')
    }
    // Serialize message field [rectCorners]
    obj.rectCorners.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RectWithConfidence
    let len;
    let data = new RectWithConfidence(null);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rectCorners]
    len = 2;
    data.rectCorners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rectCorners[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/RectWithConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4605f6e3ec78453799435502960c372';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 confidence
    geometry_msgs/Point32[2] rectCorners
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RectWithConfidence(null);
    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    if (msg.rectCorners !== undefined) {
      resolved.rectCorners = new Array(2)
      for (let i = 0; i < resolved.rectCorners.length; ++i) {
        if (msg.rectCorners.length > i) {
          resolved.rectCorners[i] = geometry_msgs.msg.Point32.Resolve(msg.rectCorners[i]);
        }
        else {
          resolved.rectCorners[i] = new geometry_msgs.msg.Point32();
        }
      }
    }
    else {
      resolved.rectCorners = new Array(2).fill(new geometry_msgs.msg.Point32())
    }

    return resolved;
    }
};

module.exports = RectWithConfidence;
