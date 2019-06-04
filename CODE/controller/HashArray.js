
/**
* Tranforms a class into an array
* The array will contain objects with the for key : parameter name, value : parameter value
* @param {Class to transfor into an array} object 
* @param {OPTIONAL: if provided only parameters in the array will be provided if the class has them} relevant 
*/
exports.getAttributes = (object) => {
  return Object.keys(object)
  .map(key => {
    return {'key':key, 'value': object[key]}
  })
}
