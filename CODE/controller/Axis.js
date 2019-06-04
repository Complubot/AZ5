

class Axis {
  constructor (index, max_values = 10) {
    this.index = index
    this.max_values = max_values
    this._current_index = 0
    this.values = []
  }

  addValue (value) {
    const value_low_filtered = value > 0.06 ? value : 0
    this.values.push(value_low_filtered)
    if (this.values.length > this.max_values) {
      this.values.shift()
    }
  }

  getFilteredValue () {
    let average = 0
    for (const value of this.values){
      average += value
    }
    return average/this.values.length
  }
}

module.exports = Axis