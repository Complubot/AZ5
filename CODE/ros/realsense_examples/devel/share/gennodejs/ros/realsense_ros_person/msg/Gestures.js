// Auto-generated. Do not edit!

// (in-package realsense_ros_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pointing = require('./Pointing.js');
let Wave = require('./Wave.js');

//-----------------------------------------------------------

class Gestures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointing = null;
      this.wave = null;
    }
    else {
      if (initObj.hasOwnProperty('pointing')) {
        this.pointing = initObj.pointing
      }
      else {
        this.pointing = new Pointing();
      }
      if (initObj.hasOwnProperty('wave')) {
        this.wave = initObj.wave
      }
      else {
        this.wave = new Wave();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gestures
    // Serialize message field [pointing]
    bufferOffset = Pointing.serialize(obj.pointing, buffer, bufferOffset);
    // Serialize message field [wave]
    bufferOffset = Wave.serialize(obj.wave, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gestures
    let len;
    let data = new Gestures(null);
    // Deserialize message field [pointing]
    data.pointing = Pointing.deserialize(buffer, bufferOffset);
    // Deserialize message field [wave]
    data.wave = Wave.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realsense_ros_person/Gestures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3676ee03e8d847bc8d129f9b683163e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pointing pointing
    Wave wave
    
    ================================================================================
    MSG: realsense_ros_person/Pointing
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
    ================================================================================
    MSG: realsense_ros_person/Wave
    int32 type
    
    #Wave gesture types
    int32 WAVE_NOT_DETECTED=-1 # Wave not detected 
    int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area
    int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area
    int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area
    int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gestures(null);
    if (msg.pointing !== undefined) {
      resolved.pointing = Pointing.Resolve(msg.pointing)
    }
    else {
      resolved.pointing = new Pointing()
    }

    if (msg.wave !== undefined) {
      resolved.wave = Wave.Resolve(msg.wave)
    }
    else {
      resolved.wave = new Wave()
    }

    return resolved;
    }
};

module.exports = Gestures;
