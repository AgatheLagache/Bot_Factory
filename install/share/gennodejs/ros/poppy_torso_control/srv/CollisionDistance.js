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

class CollisionDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
      this.offset = null;
      this.offset_values = null;
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
        this.offset = false;
      }
      if (initObj.hasOwnProperty('offset_values')) {
        this.offset_values = initObj.offset_values
      }
      else {
        this.offset_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionDistanceRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.bool(obj.offset, buffer, bufferOffset);
    // Serialize message field [offset_values]
    bufferOffset = _arraySerializer.float32(obj.offset_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionDistanceRequest
    let len;
    let data = new CollisionDistanceRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_values]
    data.offset_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    length += 4 * object.offset_values.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/CollisionDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6978711db9ba67c6c2bba6d740079724';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string          group
    bool            offset
    float32[]       offset_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionDistanceRequest(null);
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
      resolved.offset = false
    }

    if (msg.offset_values !== undefined) {
      resolved.offset_values = msg.offset_values;
    }
    else {
      resolved.offset_values = []
    }

    return resolved;
    }
};

class CollisionDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.collision = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionDistanceResponse
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [collision]
    bufferOffset = _serializer.bool(obj.collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionDistanceResponse
    let len;
    let data = new CollisionDistanceResponse(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [collision]
    data.collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_torso_control/CollisionDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd40d5fc4810aa1ed4a9bb475d7d7dd20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32         distance
    bool            collision
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionDistanceResponse(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CollisionDistanceRequest,
  Response: CollisionDistanceResponse,
  md5sum() { return 'c3379f95c70098db0befc78cb72e972b'; },
  datatype() { return 'poppy_torso_control/CollisionDistance'; }
};
