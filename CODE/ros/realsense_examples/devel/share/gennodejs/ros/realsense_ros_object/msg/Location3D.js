// Auto-generated. Do not edit!

// (in-package realsense_ros_object.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Location3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coordinates = null;
      this.horiz_margin = null;
      this.vert_margin = null;
    }
    else {
      if (initObj.hasOwnProperty('coordinates')) {
        this.coordinates = initObj.coordinates
      }
      else {
        this.coordinates = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('horiz_margin')) {
        this.horiz_margin = initObj.horiz_margin
      }
      else {
        this.horiz_margin = 0.0;
      }
      if (initObj.hasOwnProperty('vert_margin')) {
        this.vert_margin = initObj.vert_margin
      }
      else {
        this.vert_margin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Location3D
    // Serialize message field [coordinates]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.coordinates, buffer, bufferOffset);
    // Serialize message field [horiz_margin]
    bufferOffset = _serializer.float32(obj.horiz_margin, buffer, bufferOffset);
    // Serialize message field [vert_margin]
    bufferOffset = _serializer.float32(obj.vert_margin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Location3D
    let len;
    let data = new Location3D(null);
    // Deserialize message field [coordinates]
    data.coordinates = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [horiz_margin]
    data.horiz_margin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vert_margin]
    data.vert_margin = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/Location3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d0d637baabd2a2edf3e785062238586';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point32 coordinates
    float32 horiz_margin
    float32 vert_margin
    
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
    const resolved = new Location3D(null);
    if (msg.coordinates !== undefined) {
      resolved.coordinates = geometry_msgs.msg.Point32.Resolve(msg.coordinates)
    }
    else {
      resolved.coordinates = new geometry_msgs.msg.Point32()
    }

    if (msg.horiz_margin !== undefined) {
      resolved.horiz_margin = msg.horiz_margin;
    }
    else {
      resolved.horiz_margin = 0.0
    }

    if (msg.vert_margin !== undefined) {
      resolved.vert_margin = msg.vert_margin;
    }
    else {
      resolved.vert_margin = 0.0
    }

    return resolved;
    }
};

module.exports = Location3D;
