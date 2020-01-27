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

class Gesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.vectorOrigin = null;
      this.pointingVector = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('vectorOrigin')) {
        this.vectorOrigin = initObj.vectorOrigin
      }
      else {
        this.vectorOrigin = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('pointingVector')) {
        this.pointingVector = initObj.pointingVector
      }
      else {
        this.pointingVector = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gesture
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [vectorOrigin]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.vectorOrigin, buffer, bufferOffset);
    // Serialize message field [pointingVector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pointingVector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gesture
    let len;
    let data = new Gesture(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vectorOrigin]
    data.vectorOrigin = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointingVector]
    data.pointingVector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/Gesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd46ba8b59c5b03a022b488e568706275';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 type
    geometry_msgs/Point32 vectorOrigin
    geometry_msgs/Vector3 pointingVector
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
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gesture(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.vectorOrigin !== undefined) {
      resolved.vectorOrigin = geometry_msgs.msg.Point32.Resolve(msg.vectorOrigin)
    }
    else {
      resolved.vectorOrigin = new geometry_msgs.msg.Point32()
    }

    if (msg.pointingVector !== undefined) {
      resolved.pointingVector = geometry_msgs.msg.Vector3.Resolve(msg.pointingVector)
    }
    else {
      resolved.pointingVector = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Gesture;
