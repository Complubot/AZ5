
class Controller {
  constructor (p) {
    this.p = p
    this.img = null
    this.centerR = {x:0,y:0}
    this.centerL = {x:0,y:0}
    this.radiusX = 0
    this.radiusS = 0
    this.offsetR = {x:0,y:0}
    this.offsetL = {x:0,y:0}
    this.x = 0.02
    this.y = 0.71
    this.w = 0.32
    this.h = 0.31
    this.spread = (this.w - this.x)/4
  }

  setup () {
    this.image = this.p.loadImage('../icons/controller.png')
  }

  resize (width, height) {
    const reference = Math.min(width, height)
    this.fx = this.x * reference
    this.fy = this.y * reference
    this.fw = this.w * reference
    this.fh = this.h * reference
    this.centerR.x = reference * (this.w/2 + this.x) + reference * this.spread
    this.centerR.y = reference* (this.y + this.h/2 - 0.01)
    this.centerL.x = reference * (this.w/2 + this.x) - reference * this.spread
    this.centerL.y = this.centerR.y
    this.radiusX = Math.min(this.fw, this.fh)*0.25
    this.radiusS = this.radiusX * 0.25

    this.i = 0
  }

  draw () {
    this.p.image(this.image, this.fx, this.fy, this.fw, this.fh)
    this.p.fill(255, 255, 255, 0)
    this.p.circle(this.centerR.x, this.centerR.y, this.radiusX)
    this.p.circle(this.centerL.x, this.centerL.y, this.radiusX)
    this.p.fill(0, 0, 0, 255)
    this.p.circle(this.centerR.x + this.offsetR.x, this.centerR.y + this.offsetR.y, this.radiusS)
    this.p.circle(this.centerL.x + this.offsetL.x, this.centerL.y + this.offsetL.y, this.radiusS)
  }

  update (_data) {
    if (_data.controller){
      const data = _data.controller
      const format = (value)=>{return map(value, -255,255,-this.radiusS,this.radiusS)}
      this.offsetR = {x:format(data.RX),y:format(data.RY)}
      this.offsetL = {x:format(data.LX),y:format(data.LY)}
    }
  }
}