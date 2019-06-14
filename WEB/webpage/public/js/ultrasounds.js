
class Ultrasounds {
  constructor (p, amount) {
    this.p = p
    this.img = null
    this.center = {x:0,y:0}
    this.di = 0
    this.ultrasound_radius = 0
    this.offsets = Array(amount).fill(0)

    this.up = true
    this.bounds = 1
    this.speed = 0
  }

  setup () {}

  resize (width, height) {
    this.center.x = width/2
    this.center.y = height/2
    this.radius = Math.min(width, height) * 0.35
    this.ultrasound_radius = this.radius * 0.05
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
  }

  update () {
    
  }
}