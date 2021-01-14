// Auto-generated. Do not edit!

// (in-package poppy_torso_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = _arraySerializer.float32(obj.trajectory, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint);
    length += 4 * object.trajectory.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'poppy_torso_control/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9c563b07037ba675f2a0bd3d6032028';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message stores a movement
    #
    # * joint: name of the joint
    #
    # * trajectory: array of positions
    #
    
    string      joint
    float32[]   trajectory
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = msg.trajectory;
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
