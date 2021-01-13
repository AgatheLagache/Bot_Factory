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

class SetTorqueMaxRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.max_torques = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('max_torques')) {
        this.max_torques = initObj.max_torques
      }
      else {
        this.max_torques = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTorqueMaxRequest
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [max_torques]
    bufferOffset = _arraySerializer.float32(obj.max_torques, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTorqueMaxRequest
    let len;
    let data = new SetTorqueMaxRequest(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [max_torques]
    data.max_torques = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.max_torques.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_msgs/SetTorqueMaxRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38f0e745a4598ee480032418e4d9c65f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    float32[] max_torques
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTorqueMaxRequest(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.max_torques !== undefined) {
      resolved.max_torques = msg.max_torques;
    }
    else {
      resolved.max_torques = []
    }

    return resolved;
    }
};

class SetTorqueMaxResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTorqueMaxResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTorqueMaxResponse
    let len;
    let data = new SetTorqueMaxResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poppy_msgs/SetTorqueMaxResponse';
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
    const resolved = new SetTorqueMaxResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetTorqueMaxRequest,
  Response: SetTorqueMaxResponse,
  md5sum() { return '38f0e745a4598ee480032418e4d9c65f'; },
  datatype() { return 'poppy_msgs/SetTorqueMax'; }
};
