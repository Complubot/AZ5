
"use strict";

let LoadRecognitionDB = require('./LoadRecognitionDB.js')
let StopTracking = require('./StopTracking.js')
let StartTracking = require('./StartTracking.js')
let TrackingConfig = require('./TrackingConfig.js')
let SaveRecognitionDB = require('./SaveRecognitionDB.js')
let RecognitionRegister = require('./RecognitionRegister.js')
let Recognition = require('./Recognition.js')

module.exports = {
  LoadRecognitionDB: LoadRecognitionDB,
  StopTracking: StopTracking,
  StartTracking: StartTracking,
  TrackingConfig: TrackingConfig,
  SaveRecognitionDB: SaveRecognitionDB,
  RecognitionRegister: RecognitionRegister,
  Recognition: Recognition,
};
