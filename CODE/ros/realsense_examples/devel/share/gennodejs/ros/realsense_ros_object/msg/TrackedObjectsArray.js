// Auto-generated. Do not edit!

// (in-package realsense_ros_object.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackedObject = require('./TrackedObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackedObjectsArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracked_objects_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracked_objects_vector')) {
        this.tracked_objects_vector = initObj.tracked_objects_vector
      }
      else {
        this.tracked_objects_vector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObjectsArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracked_objects_vector]
    // Serialize the length for message field [tracked_objects_vector]
    bufferOffset = _serializer.uint32(obj.tracked_objects_vector.length, buffer, bufferOffset);
    obj.tracked_objects_vector.forEach((val) => {
      bufferOffset = TrackedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObjectsArray
    let len;
    let data = new TrackedObjectsArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_objects_vector]
    // Deserialize array length for message field [tracked_objects_vector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracked_objects_vector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracked_objects_vector[i] = TrackedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 40 * object.tracked_objects_vector.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/TrackedObjectsArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eba302ff867767c2d7dce5a9b84a6ec3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    TrackedObject[] tracked_objects_vector
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: realsense_ros_object/TrackedObject
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
    const resolved = new TrackedObjectsArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracked_objects_vector !== undefined) {
      resolved.tracked_objects_vector = new Array(msg.tracked_objects_vector.length);
      for (let i = 0; i < resolved.tracked_objects_vector.length; ++i) {
        resolved.tracked_objects_vector[i] = TrackedObject.Resolve(msg.tracked_objects_vector[i]);
      }
    }
    else {
      resolved.tracked_objects_vector = []
    }

    return resolved;
    }
};

module.exports = TrackedObjectsArray;
