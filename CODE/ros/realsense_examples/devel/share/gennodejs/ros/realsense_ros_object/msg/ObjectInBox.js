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
let Rect = require('./Rect.js');
let Location3D = require('./Location3D.js');

//-----------------------------------------------------------

class ObjectInBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object = null;
      this.object_bbox = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = new Object();
      }
      if (initObj.hasOwnProperty('object_bbox')) {
        this.object_bbox = initObj.object_bbox
      }
      else {
        this.object_bbox = new Rect();
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
    // Serializes a message object of type ObjectInBox
    // Serialize message field [object]
    bufferOffset = Object.serialize(obj.object, buffer, bufferOffset);
    // Serialize message field [object_bbox]
    bufferOffset = Rect.serialize(obj.object_bbox, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = Location3D.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectInBox
    let len;
    let data = new ObjectInBox(null);
    // Deserialize message field [object]
    data.object = Object.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_bbox]
    data.object_bbox = Rect.deserialize(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = Location3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Object.getMessageSize(object.object);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/ObjectInBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '506c556ef4808f18c8fda7a0b6d365a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Object object
    Rect object_bbox
    Location3D location
    
    ================================================================================
    MSG: realsense_ros_object/Object
    int32 label
    string object_name
    float32 probability
    
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
    const resolved = new ObjectInBox(null);
    if (msg.object !== undefined) {
      resolved.object = Object.Resolve(msg.object)
    }
    else {
      resolved.object = new Object()
    }

    if (msg.object_bbox !== undefined) {
      resolved.object_bbox = Rect.Resolve(msg.object_bbox)
    }
    else {
      resolved.object_bbox = new Rect()
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

module.exports = ObjectInBox;
