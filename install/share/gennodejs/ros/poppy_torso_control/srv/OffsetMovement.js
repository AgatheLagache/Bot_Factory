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


//-----------------------------------------------------------

class OffsetMovementRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
      this.offset = null;
      this.execute = null;
      this.wait = null;
    }
    else {
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OffsetMovementRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _arraySerializer.float32(obj.offset, buffer, bufferOffset, null);
    // Serialize message field [execute]
    bufferOffset = _serializer.bool(obj.execute, buffer, bufferOffset);
    // Serialize message field [wait]
    bufferOffset = _serializer.bool(obj.wait, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OffsetMovementRequest
    let len;
    let data = new OffsetMovementRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [execute]
    data.execute = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wait]
    data.wait = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    length += 4 * object.offset.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/OffsetMovementRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96dd0ed95f53e9dfc5f7e996477684cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string          group
    float32[]       offset
    bool            execute
    bool            wait
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OffsetMovementRequest(null);
    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = []
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

    return resolved;
    }
};

class OffsetMovementResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
      this.start_pos = null;
      this.target_pos = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OffsetMovementResponse
    // Serialize message field [error]
    bufferOffset = _serializer.int8(obj.error, buffer, bufferOffset);
    // Serialize message field [start_pos]
    bufferOffset = _arraySerializer.float32(obj.start_pos, buffer, bufferOffset, null);
    // Serialize message field [target_pos]
    bufferOffset = _arraySerializer.float32(obj.target_pos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OffsetMovementResponse
    let len;
    let data = new OffsetMovementResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [start_pos]
    data.start_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_pos]
    data.target_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.start_pos.length;
    length += 4 * object.target_pos.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/OffsetMovementResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3daaa4b405ce13511403ebae4fd1f1b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8            error
    float32[]       start_pos
    float32[]       target_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OffsetMovementResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: OffsetMovementRequest,
  Response: OffsetMovementResponse,
  md5sum() { return '952c1ced12c3623ff08e433209bdfd8a'; },
  datatype() { return 'poppy_torso_control/OffsetMovement'; }
};
