// Auto-generated. Do not edit!

// (in-package era_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectionBox = require('./DetectionBox.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectionBoxList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detection_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detection_list')) {
        this.detection_list = initObj.detection_list
      }
      else {
        this.detection_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionBoxList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detection_list]
    // Serialize the length for message field [detection_list]
    bufferOffset = _serializer.uint32(obj.detection_list.length, buffer, bufferOffset);
    obj.detection_list.forEach((val) => {
      bufferOffset = DetectionBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionBoxList
    let len;
    let data = new DetectionBoxList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detection_list]
    // Deserialize array length for message field [detection_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detection_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detection_list[i] = DetectionBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detection_list.forEach((val) => {
      length += DetectionBox.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'era_gazebo/DetectionBoxList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7caafab23e9902293afd0ef03657c9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    DetectionBox[] detection_list
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionBoxList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detection_list !== undefined) {
      resolved.detection_list = new Array(msg.detection_list.length);
      for (let i = 0; i < resolved.detection_list.length; ++i) {
        resolved.detection_list[i] = DetectionBox.Resolve(msg.detection_list[i]);
      }
    }
    else {
      resolved.detection_list = []
    }

    return resolved;
    }
};

module.exports = DetectionBoxList;
