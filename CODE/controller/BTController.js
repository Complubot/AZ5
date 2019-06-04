
let Controller = require('./Controller.js')
const HashArray = require('./HashArray.js')
const bluetooth = require('node-bluetooth')
const device = new bluetooth.DeviceINQ()
const gamepad = require("gamepad")
//const name = 'OnePlus 5T'

let gamepadInterval = null
let BTInterval = null

const setController = (controller) => {
  Controller = controller;
}

const initGamepad = (vendorID = 1356, productID = 2508, action) => {
  gamepad.init()
  gamepadInterval = setInterval(()=>{
    gamepad.processEvents()
    action()
    let controller = null
    for (var i = 0, l = gamepad.numDevices(); i < l; i++) {
      const gamepad_device = gamepad.deviceAtIndex()
      if (gamepad_device.vendorID == vendorID && gamepad_device.productID == productID){
        controller = gamepad_device
      }
    }
    if (controller){
      HashArray. getAttributes(Controller).forEach(axis => {
        axis.value.addValue(controller.axisStates[axis.value.index])
      })
    }
  }, 1)
}

/**
 * 
 * @param {Device we wold like to connect to} name 
 * @param {*} action 
 * @param {*} callback 
 */
const initBT = (name, action, callback) => {
  device.listPairedDevices((bt_devices)=>{
    console.log(bt_devices)
    bt_devices.forEach((bt_device)=>{
      if (bt_device.name == name){
        device.findSerialPortChannel(bt_device.address, (channel) => {
          console.log('Found RFCOMM channel for serial port: ', name, channel, bt_device.address)
          bluetooth.connect(bt_device.address, channel, (err, connection)=>{
            if(err) return console.error(err)
            BTInterval = setInterval(()=>{
              const to_send = action()
              for (package of to_send){
                connection.write(new Buffer(package, 'utf-8'), () => {
                  if (callback){
                    callback(package)
                  }
                })
              }
            }, 100)
          })
        })
      }
    })
  })
}

const getPaired = () => {
  return device.listPairedDevices((bt_devices)=>{
    return bt_devices
  })
}

const endGamepad = () => {
  if (gamepadInterval){
    clearInterval(gamepadInterval)
    gamepadInterval = null
    gamepad.shutdown()
  }
}

const endBT = () => {
  if (BTInterval){
    clearInterval(BTInterval)
    BTInterval = null
  }
}

