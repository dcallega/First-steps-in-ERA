// Auto-generated. Do not edit!

// (in-package era_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ERAMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ID = null;
      this.pose = null;
      this.grid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('grid')) {
        this.grid = initObj.grid
      }
      else {
        this.grid = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ERAMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.string(obj.ID, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [grid]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.grid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ERAMsg
    let len;
    let data = new ERAMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid]
    data.grid = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ID.length;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.grid);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'era_gazebo/ERAMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b95f2c9c8a23e957a60f31cf6a105519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string ID
    geometry_msgs/Pose pose
    nav_msgs/OccupancyGrid grid
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ERAMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.grid !== undefined) {
      resolved.grid = nav_msgs.msg.OccupancyGrid.Resolve(msg.grid)
    }
    else {
      resolved.grid = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = ERAMsg;
