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

class ForwardKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForwardKinematicsRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForwardKinematicsRequest
    let len;
    let data = new ForwardKinematicsRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    length += 4 * object.joints.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/ForwardKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89e53c7d83a6da990d473520bde4d43f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  group
    float32[] joints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForwardKinematicsRequest(null);
    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

class ForwardKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end_pos = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('end_pos')) {
        this.end_pos = initObj.end_pos
      }
      else {
        this.end_pos = [];
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForwardKinematicsResponse
    // Serialize message field [end_pos]
    bufferOffset = _arraySerializer.float32(obj.end_pos, buffer, bufferOffset, null);
    // Serialize message field [error]
    bufferOffset = _serializer.int8(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForwardKinematicsResponse
    let len;
    let data = new ForwardKinematicsResponse(null);
    // Deserialize message field [end_pos]
    data.end_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [error]
    data.error = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.end_pos.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/ForwardKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b64e256c96297eb14510ac69a301373';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] end_pos 
    int8 error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForwardKinematicsResponse(null);
    if (msg.end_pos !== undefined) {
      resolved.end_pos = msg.end_pos;
    }
    else {
      resolved.end_pos = []
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ForwardKinematicsRequest,
  Response: ForwardKinematicsResponse,
  md5sum() { return 'fd29b61d63688aceaae9b2f12b8a16ee'; },
  datatype() { return 'poppy_torso_control/ForwardKinematics'; }
};
