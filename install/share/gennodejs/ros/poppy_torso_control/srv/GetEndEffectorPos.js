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

class GetEndEffectorPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
    }
    else {
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorPosRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorPosRequest
    let len;
    let data = new GetEndEffectorPosRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/GetEndEffectorPosRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21b6d99e83cb6198d5c1c624c41148a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string group
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEndEffectorPosRequest(null);
    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    return resolved;
    }
};

class GetEndEffectorPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xyz = null;
    }
    else {
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEndEffectorPosResponse
    // Serialize message field [xyz]
    bufferOffset = _arraySerializer.float32(obj.xyz, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEndEffectorPosResponse
    let len;
    let data = new GetEndEffectorPosResponse(null);
    // Deserialize message field [xyz]
    data.xyz = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.xyz.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/GetEndEffectorPosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8da117dcfc01d450b7bb05e0bca279a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] xyz
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEndEffectorPosResponse(null);
    if (msg.xyz !== undefined) {
      resolved.xyz = msg.xyz;
    }
    else {
      resolved.xyz = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetEndEffectorPosRequest,
  Response: GetEndEffectorPosResponse,
  md5sum() { return 'd8748f63ec08641b4cee5181223ababf'; },
  datatype() { return 'poppy_torso_control/GetEndEffectorPos'; }
};
