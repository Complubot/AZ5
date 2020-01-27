// Auto-generated. Do not edit!

// (in-package realsense_ros_object.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rect = require('./Rect.js');
let Location3D = require('./Location3D.js');

//-----------------------------------------------------------

class TrackedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bbox = null;
      this.id = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = new Rect();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new Location3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObject
    // Serialize message field [bbox]
    bufferOffset = Rect.serialize(obj.bbox, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = Location3D.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObject
    let len;
    let data = new TrackedObject(null);
    // Deserialize message field [bbox]
    data.bbox = Rect.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = Location3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/TrackedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49a76037ad24b477fa0d232ca39d6579';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rect bbox
    int32 id 
    Location3D location
    
    ================================================================================
    MSG: realsense_ros_object/Rect
    int32 x
    int32 y
    int32 height
    int32 width
    
    ================================================================================
    MSG: realsense_ros_object/Location3D
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
    const resolved = new TrackedObject(null);
    if (msg.bbox !== undefined) {
      resolved.bbox = Rect.Resolve(msg.bbox)
    }
    else {
      resolved.bbox = new Rect()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.location !== undefined) {
      resolved.location = Location3D.Resolve(msg.location)
    }
    else {
      resolved.location = new Location3D()
    }

    return resolved;
    }
};

module.exports = TrackedObject;
