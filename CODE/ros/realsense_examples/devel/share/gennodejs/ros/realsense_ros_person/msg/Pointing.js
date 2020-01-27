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

class Pointing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confidence = null;
      this.originColor = null;
      this.originWorld = null;
      this.orientationColor = null;
      this.orientationWorld = null;
    }
    else {
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
      if (initObj.hasOwnProperty('originColor')) {
        this.originColor = initObj.originColor
      }
      else {
        this.originColor = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('originWorld')) {
        this.originWorld = initObj.originWorld
      }
      else {
        this.originWorld = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('orientationColor')) {
        this.orientationColor = initObj.orientationColor
      }
      else {
        this.orientationColor = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('orientationWorld')) {
        this.orientationWorld = initObj.orientationWorld
      }
      else {
        this.orientationWorld = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pointing
    // Serialize message field [confidence]
    bufferOffset = _serializer.int32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [originColor]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.originColor, buffer, bufferOffset);
    // Serialize message field [originWorld]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.originWorld, buffer, bufferOffset);
    // Serialize message field [orientationColor]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.orientationColor, buffer, bufferOffset);
    // Serialize message field [orientationWorld]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orientationWorld, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pointing
    let len;
    let data = new Pointing(null);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [originColor]
    data.originColor = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [originWorld]
    data.originWorld = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientationColor]
    data.orientationColor = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientationWorld]
    data.orientationWorld = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/Pointing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8e17bba059ae94c10bd49b0a03744e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 confidence
    geometry_msgs/Point32 originColor
    geometry_msgs/Point32 originWorld
    geometry_msgs/Point32 orientationColor
    geometry_msgs/Vector3 orientationWorld
    
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
    const resolved = new Pointing(null);
    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    if (msg.originColor !== undefined) {
      resolved.originColor = geometry_msgs.msg.Point32.Resolve(msg.originColor)
    }
    else {
      resolved.originColor = new geometry_msgs.msg.Point32()
    }

    if (msg.originWorld !== undefined) {
      resolved.originWorld = geometry_msgs.msg.Point32.Resolve(msg.originWorld)
    }
    else {
      resolved.originWorld = new geometry_msgs.msg.Point32()
    }

    if (msg.orientationColor !== undefined) {
      resolved.orientationColor = geometry_msgs.msg.Point32.Resolve(msg.orientationColor)
    }
    else {
      resolved.orientationColor = new geometry_msgs.msg.Point32()
    }

    if (msg.orientationWorld !== undefined) {
      resolved.orientationWorld = geometry_msgs.msg.Vector3.Resolve(msg.orientationWorld)
    }
    else {
      resolved.orientationWorld = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Pointing;
