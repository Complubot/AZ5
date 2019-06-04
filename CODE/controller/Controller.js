
const Axis = require('./Axis.js')

const Controller = {
  L_X : new Axis(0),
  L_Y : new Axis(1),
  R_X : new Axis(2),
  R_Y : new Axis(3),
  B_X : new Axis(4),
  B_Y : new Axis(5)
}

const getValues = () => {
  return HashArray.getAttributes(Controller).map(axis => {
    return {key : axis.key, value : axis.value.getFilteredValue()}
  })
}

module.exports = Controller