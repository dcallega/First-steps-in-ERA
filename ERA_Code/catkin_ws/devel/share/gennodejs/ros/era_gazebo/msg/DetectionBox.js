// Auto-generated. Do not edit!

// (in-package era_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectionBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.id = null;
      this.left = null;
      this.right = null;
      this.top = null;
      this.bottom = null;
      this.mask_1d = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = 0;
      }
      if (initObj.hasOwnProperty('mask_1d')) {
        this.mask_1d = initObj.mask_1d
      }
      else {
        this.mask_1d = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionBox
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.uint32(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.uint32(obj.right, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.uint32(obj.top, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _serializer.uint32(obj.bottom, buffer, bufferOffset);
    // Serialize message field [mask_1d]
    bufferOffset = _arraySerializer.float32(obj.mask_1d, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionBox
    let len;
    let data = new DetectionBox(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mask_1d]
    data.mask_1d = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += 4 * object.mask_1d.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'era_gazebo/DetectionBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd552de66f95ce47b60d4c14ec821db2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DetectionBox(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = 0
    }

    if (msg.mask_1d !== undefined) {
      resolved.mask_1d = msg.mask_1d;
    }
    else {
      resolved.mask_1d = []
    }

    return resolved;
    }
};

module.exports = DetectionBox;
