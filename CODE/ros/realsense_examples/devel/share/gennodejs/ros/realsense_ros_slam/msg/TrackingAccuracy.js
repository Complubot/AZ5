// Auto-generated. Do not edit!

// (in-package realsense_ros_slam.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackingAccuracy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracking_accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracking_accuracy')) {
        this.tracking_accuracy = initObj.tracking_accuracy
      }
      else {
        this.tracking_accuracy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingAccuracy
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracking_accuracy]
    bufferOffset = _serializer.uint32(obj.tracking_accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingAccuracy
    let len;
    let data = new TrackingAccuracy(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracking_accuracy]
    data.tracking_accuracy = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_slam/TrackingAccuracy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f02ead1dd88aaa736f807c98890ab00c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 tracking_accuracy
    
    #tracking_accuracy types constants
    int32 TRACKING_ACCURACY_FAILED=0
    int32 TRACKING_ACCURACY_LOW=1
    int32 TRACKING_ACCURACY_MEDIUM=2
    int32 TRACKING_ACCURACY_HIGH=3
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackingAccuracy(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracking_accuracy !== undefined) {
      resolved.tracking_accuracy = msg.tracking_accuracy;
    }
    else {
      resolved.tracking_accuracy = 0
    }

    return resolved;
    }
};

// Constants for message
TrackingAccuracy.Constants = {
  TRACKING_ACCURACY_FAILED: 0,
  TRACKING_ACCURACY_LOW: 1,
  TRACKING_ACCURACY_MEDIUM: 2,
  TRACKING_ACCURACY_HIGH: 3,
}

module.exports = TrackingAccuracy;
