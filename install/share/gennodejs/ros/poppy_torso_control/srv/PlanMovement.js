// Auto-generated. Do not edit!

// (in-package poppy_torso_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Trajectory = require('../msg/Trajectory.js');

//-----------------------------------------------------------

class PlanMovementRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
      this.rand_start = null;
      this.current_start = null;
      this.start_pos = null;
      this.rand_target = null;
      this.target_pos = null;
      this.execute = null;
      this.wait = null;
      this.ret_plan = null;
      this.ret_fps = null;
    }
    else {
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('rand_start')) {
        this.rand_start = initObj.rand_start
      }
      else {
        this.rand_start = false;
      }
      if (initObj.hasOwnProperty('current_start')) {
        this.current_start = initObj.current_start
      }
      else {
        this.current_start = false;
      }
      if (initObj.hasOwnProperty('start_pos')) {
        this.start_pos = initObj.start_pos
      }
      else {
        this.start_pos = [];
      }
      if (initObj.hasOwnProperty('rand_target')) {
        this.rand_target = initObj.rand_target
      }
      else {
        this.rand_target = false;
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = [];
      }
      if (initObj.hasOwnProperty('execute')) {
        this.execute = initObj.execute
      }
      else {
        this.execute = false;
      }
      if (initObj.hasOwnProperty('wait')) {
        this.wait = initObj.wait
      }
      else {
        this.wait = false;
      }
      if (initObj.hasOwnProperty('ret_plan')) {
        this.ret_plan = initObj.ret_plan
      }
      else {
        this.ret_plan = false;
      }
      if (initObj.hasOwnProperty('ret_fps')) {
        this.ret_fps = initObj.ret_fps
      }
      else {
        this.ret_fps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanMovementRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [rand_start]
    bufferOffset = _serializer.bool(obj.rand_start, buffer, bufferOffset);
    // Serialize message field [current_start]
    bufferOffset = _serializer.bool(obj.current_start, buffer, bufferOffset);
    // Serialize message field [start_pos]
    bufferOffset = _arraySerializer.float32(obj.start_pos, buffer, bufferOffset, null);
    // Serialize message field [rand_target]
    bufferOffset = _serializer.bool(obj.rand_target, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = _arraySerializer.float32(obj.target_pos, buffer, bufferOffset, null);
    // Serialize message field [execute]
    bufferOffset = _serializer.bool(obj.execute, buffer, bufferOffset);
    // Serialize message field [wait]
    bufferOffset = _serializer.bool(obj.wait, buffer, bufferOffset);
    // Serialize message field [ret_plan]
    bufferOffset = _serializer.bool(obj.ret_plan, buffer, bufferOffset);
    // Serialize message field [ret_fps]
    bufferOffset = _serializer.int8(obj.ret_fps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanMovementRequest
    let len;
    let data = new PlanMovementRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rand_start]
    data.rand_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_start]
    data.current_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_pos]
    data.start_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rand_target]
    data.rand_target = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [execute]
    data.execute = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wait]
    data.wait = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ret_plan]
    data.ret_plan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ret_fps]
    data.ret_fps = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    length += 4 * object.start_pos.length;
    length += 4 * object.target_pos.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/PlanMovementRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba10917eee5925fa4fe634f7f6f5780b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string          group
    bool            rand_start
    bool            current_start
    float32[]       start_pos
    bool            rand_target
    float32[]       target_pos
    bool            execute
    bool            wait
    bool            ret_plan
    int8            ret_fps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanMovementRequest(null);
    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.rand_start !== undefined) {
      resolved.rand_start = msg.rand_start;
    }
    else {
      resolved.rand_start = false
    }

    if (msg.current_start !== undefined) {
      resolved.current_start = msg.current_start;
    }
    else {
      resolved.current_start = false
    }

    if (msg.start_pos !== undefined) {
      resolved.start_pos = msg.start_pos;
    }
    else {
      resolved.start_pos = []
    }

    if (msg.rand_target !== undefined) {
      resolved.rand_target = msg.rand_target;
    }
    else {
      resolved.rand_target = false
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = []
    }

    if (msg.execute !== undefined) {
      resolved.execute = msg.execute;
    }
    else {
      resolved.execute = false
    }

    if (msg.wait !== undefined) {
      resolved.wait = msg.wait;
    }
    else {
      resolved.wait = false
    }

    if (msg.ret_plan !== undefined) {
      resolved.ret_plan = msg.ret_plan;
    }
    else {
      resolved.ret_plan = false
    }

    if (msg.ret_fps !== undefined) {
      resolved.ret_fps = msg.ret_fps;
    }
    else {
      resolved.ret_fps = 0
    }

    return resolved;
    }
};

class PlanMovementResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
      this.start_pos = null;
      this.target_pos = null;
      this.plans = null;
    }
    else {
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('start_pos')) {
        this.start_pos = initObj.start_pos
      }
      else {
        this.start_pos = [];
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = [];
      }
      if (initObj.hasOwnProperty('plans')) {
        this.plans = initObj.plans
      }
      else {
        this.plans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanMovementResponse
    // Serialize message field [error]
    bufferOffset = _serializer.int8(obj.error, buffer, bufferOffset);
    // Serialize message field [start_pos]
    bufferOffset = _arraySerializer.float32(obj.start_pos, buffer, bufferOffset, null);
    // Serialize message field [target_pos]
    bufferOffset = _arraySerializer.float32(obj.target_pos, buffer, bufferOffset, null);
    // Serialize message field [plans]
    // Serialize the length for message field [plans]
    bufferOffset = _serializer.uint32(obj.plans.length, buffer, bufferOffset);
    obj.plans.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanMovementResponse
    let len;
    let data = new PlanMovementResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [start_pos]
    data.start_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_pos]
    data.target_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [plans]
    // Deserialize array length for message field [plans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.plans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.plans[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.start_pos.length;
    length += 4 * object.target_pos.length;
    object.plans.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/PlanMovementResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b54ca3a6fee8d419981a188e02f0dd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8            error
    float32[]       start_pos
    float32[]       target_pos
    Trajectory[]    plans
    
    ================================================================================
    MSG: poppy_torso_control/Trajectory
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
    const resolved = new PlanMovementResponse(null);
    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.start_pos !== undefined) {
      resolved.start_pos = msg.start_pos;
    }
    else {
      resolved.start_pos = []
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = []
    }

    if (msg.plans !== undefined) {
      resolved.plans = new Array(msg.plans.length);
      for (let i = 0; i < resolved.plans.length; ++i) {
        resolved.plans[i] = Trajectory.Resolve(msg.plans[i]);
      }
    }
    else {
      resolved.plans = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanMovementRequest,
  Response: PlanMovementResponse,
  md5sum() { return '739716dc3ed3bb73b035e54b77eee141'; },
  datatype() { return 'poppy_torso_control/PlanMovement'; }
};
