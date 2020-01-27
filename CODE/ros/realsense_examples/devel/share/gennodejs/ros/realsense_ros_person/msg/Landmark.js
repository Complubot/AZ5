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

class Landmark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.realWorldCoordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('realWorldCoordinates')) {
        this.realWorldCoordinates = initObj.realWorldCoordinates
      }
      else {
        this.realWorldCoordinates = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Landmark
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [realWorldCoordinates]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.realWorldCoordinates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Landmark
    let len;
    let data = new Landmark(null);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [realWorldCoordinates]
    data.realWorldCoordinates = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/Landmark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40b8559cad6d27176fd0a970412b03f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point location
    geometry_msgs/Point32 realWorldCoordinates
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new Landmark(null);
    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Point.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Point()
    }

    if (msg.realWorldCoordinates !== undefined) {
      resolved.realWorldCoordinates = geometry_msgs.msg.Point32.Resolve(msg.realWorldCoordinates)
    }
    else {
      resolved.realWorldCoordinates = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = Landmark;
