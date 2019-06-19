
class Ultrasounds {
  constructor (p, amount) {
    this.p = p
    this.img = null
    this.center = {x:0,y:0}
    this.di = 0
    this.ultrasound_radius = 0
    this.offsets = Array(amount).fill(0)
    this.data = null
    this.up = true
    this.bounds = 1
    this.speed = 0
  }

  setup () {}

  resize (width, height) {
    this.center.x = width/2
    this.center.y = height/2
    this.radius = Math.min(width, height) * 0.05
    this.ultrasound_radius = Math.min(width, height) * 0.005
  }

  draw () {
    let positions = []
    for (const i in this.offsets){
      const angle = 2 * Math.PI / this.offsets.length * i - Math.PI/2
      const radius = (this.radius-this.offsets[i])
      const x = this.center.x + radius*Math.cos(angle)
      const y = this.center.y + radius*Math.sin(angle)
      this.p.circle(x,y,this.ultrasound_radius)
      positions.push({x,y})
    }
    this.p.noFill()
    this.p.beginShape()
    for (let i = 0; i < positions.length+3; ++i){
      this.p.curveVertex(positions[i%positions.length].x, positions[i%positions.length].y)
    }
    this.p.endShape()
    this.p.textSize(32);
    this.p.fill(0, 102, 153);
    if (this.data){
      for (let i = 0; i < positions.length; ++i){
        this.p.text(''+this.data[i], positions[i].x, positions[i].y)
      }
    }
  }

  update (_data) {
    if (_data && _data.us){
      this.data = _data.us
      for (const i in this.offsets){
        this.offsets[i] = - constrain(this.data[i], 0, 300)*0.9
      }
    }
  }
}