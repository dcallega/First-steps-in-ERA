// Auto-generated. Do not edit!

// (in-package era_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectionBox = require('../msg/DetectionBox.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SceneBBoxRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bbox = null;
    }
    else {
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = new DetectionBox();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneBBoxRequest
    // Serialize message field [bbox]
    bufferOffset = DetectionBox.serialize(obj.bbox, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneBBoxRequest
    let len;
    let data = new SceneBBoxRequest(null);
    // Deserialize message field [bbox]
    data.bbox = DetectionBox.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DetectionBox.getMessageSize(object.bbox);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'era_gazebo/SceneBBoxRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd321c86fe9be2b64c0490217178f7cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DetectionBox bbox
    
    ================================================================================
    MSG: era_gazebo/DetectionBox
    Header header
    
    string type
    uint16 id
    uint32 left
    uint32 right
    uint32 top
    uint32 bottom
    float32[] mask_1d
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneBBoxRequest(null);
    if (msg.bbox !== undefined) {
      resolved.bbox = DetectionBox.Resolve(msg.bbox)
    }
    else {
      resolved.bbox = new DetectionBox()
    }

    return resolved;
    }
};

class SceneBBoxResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneBBoxResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneBBoxResponse
    let len;
    let data = new SceneBBoxResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'era_gazebo/SceneBBoxResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneBBoxResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SceneBBoxRequest,
  Response: SceneBBoxResponse,
  md5sum() { return 'dd321c86fe9be2b64c0490217178f7cc'; },
  datatype() { return 'era_gazebo/SceneBBox'; }
};
