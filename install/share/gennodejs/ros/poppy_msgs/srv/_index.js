
"use strict";

let ReachTarget = require('./ReachTarget.js')
let ExecuteTrajectory = require('./ExecuteTrajectory.js')
let SetTorqueMax = require('./SetTorqueMax.js')
let SetCompliant = require('./SetCompliant.js')
let SetIdleMotion = require('./SetIdleMotion.js')

module.exports = {
  ReachTarget: ReachTarget,
  ExecuteTrajectory: ExecuteTrajectory,
  SetTorqueMax: SetTorqueMax,
  SetCompliant: SetCompliant,
  SetIdleMotion: SetIdleMotion,
};
