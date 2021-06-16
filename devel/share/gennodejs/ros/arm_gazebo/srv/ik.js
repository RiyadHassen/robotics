// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ikRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_pose')) {
        this.desired_pose = initObj.desired_pose
      }
      else {
        this.desired_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikRequest
    // Serialize message field [desired_pose]
    bufferOffset = _arraySerializer.float64(obj.desired_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikRequest
    let len;
    let data = new ikRequest(null);
    // Deserialize message field [desired_pose]
    data.desired_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.desired_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7b52fbec86876b6705dcbf2609fcc3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] desired_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikRequest(null);
    if (msg.desired_pose !== undefined) {
      resolved.desired_pose = msg.desired_pose;
    }
    else {
      resolved.desired_pose = []
    }

    return resolved;
    }
};

class ikResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikResponse
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikResponse
    let len;
    let data = new ikResponse(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eebf9cc7d525d143ad033b65dacb648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikResponse(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ikRequest,
  Response: ikResponse,
  md5sum() { return '8e5bcb00278a6fecb7986c350cbe23a5'; },
  datatype() { return 'arm_gazebo/ik'; }
};
