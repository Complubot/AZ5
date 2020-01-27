// Auto-generated. Do not edit!

// (in-package realsense_ros_object.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectInBox = require('./ObjectInBox.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectsInBoxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects_vector')) {
        this.objects_vector = initObj.objects_vector
      }
      else {
        this.objects_vector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectsInBoxes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects_vector]
    // Serialize the length for message field [objects_vector]
    bufferOffset = _serializer.uint32(obj.objects_vector.length, buffer, bufferOffset);
    obj.objects_vector.forEach((val) => {
      bufferOffset = ObjectInBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsInBoxes
    let len;
    let data = new ObjectsInBoxes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects_vector]
    // Deserialize array length for message field [objects_vector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects_vector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects_vector[i] = ObjectInBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects_vector.forEach((val) => {
      length += ObjectInBox.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_object/ObjectsInBoxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '766265c76170a5de1a5179aa1e37cf42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    ObjectInBox[] objects_vector
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
    MSG: realsense_ros_object/ObjectInBox
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
    const resolved = new ObjectsInBoxes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects_vector !== undefined) {
      resolved.objects_vector = new Array(msg.objects_vector.length);
      for (let i = 0; i < resolved.objects_vector.length; ++i) {
        resolved.objects_vector[i] = ObjectInBox.Resolve(msg.objects_vector[i]);
      }
    }
    else {
      resolved.objects_vector = []
    }

    return resolved;
    }
};

module.exports = ObjectsInBoxes;
