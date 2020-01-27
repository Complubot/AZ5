
"use strict";

let UI = require('./UI.js');
let ObjectsInBoxes = require('./ObjectsInBoxes.js');
let cpu_gpu = require('./cpu_gpu.js');
let Frame = require('./Frame.js');
let Location3D = require('./Location3D.js');
let Gestures = require('./Gestures.js');
let ObjectArray = require('./ObjectArray.js');
let Landmark = require('./Landmark.js');
let Object = require('./Object.js');
let UserInfo = require('./UserInfo.js');
let TrackedObjectsArray = require('./TrackedObjectsArray.js');
let Rect = require('./Rect.js');
let User = require('./User.js');
let TrackedObject = require('./TrackedObject.js');
let Pointing = require('./Pointing.js');
let ObjectInBox = require('./ObjectInBox.js');

module.exports = {
  UI: UI,
  ObjectsInBoxes: ObjectsInBoxes,
  cpu_gpu: cpu_gpu,
  Frame: Frame,
  Location3D: Location3D,
  Gestures: Gestures,
  ObjectArray: ObjectArray,
  Landmark: Landmark,
  Object: Object,
  UserInfo: UserInfo,
  TrackedObjectsArray: TrackedObjectsArray,
  Rect: Rect,
  User: User,
  TrackedObject: TrackedObject,
  Pointing: Pointing,
  ObjectInBox: ObjectInBox,
};
