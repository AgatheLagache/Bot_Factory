// Auto-generated. Do not edit!

// (in-package poppy_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetIdleMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIdleMotionRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIdleMotionRequest
    let len;
    let data = new SetIdleMotionRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_msgs/SetIdleMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8be1c25e78be3492319574e465362b18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 COMMAND_START = 1
    uint8 COMMAND_STOP = 0
    uint8 COMMAND_PAUSE = 2
    uint8 COMMAND_RESUME = 3
    
    uint8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIdleMotionRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

// Constants for message
SetIdleMotionRequest.Constants = {
  COMMAND_START: 1,
  COMMAND_STOP: 0,
  COMMAND_PAUSE: 2,
  COMMAND_RESUME: 3,
}

class SetIdleMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIdleMotionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIdleMotionResponse
    let len;
    let data = new SetIdleMotionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_msgs/SetIdleMotionResponse';
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
    const resolved = new SetIdleMotionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetIdleMotionRequest,
  Response: SetIdleMotionResponse,
  md5sum() { return '8be1c25e78be3492319574e465362b18'; },
  datatype() { return 'poppy_msgs/SetIdleMotion'; }
};
