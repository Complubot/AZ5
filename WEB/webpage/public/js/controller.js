
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
  }

  setup () {
    this.image = this.p.loadImage('../icons/controller.png')
    this.x = 0.02
    this.y = 0.71
    this.w = 0.19
    this.h = 0.32
    this.spread = (this.w - this.x)/4
  }

  draw (width, height) {
    this.p.image(this.image, width*this.x, height*this.y, width*this.w, height*this.h)
    this.centerR.x = width * (this.w/2 + this.x) + width * this.spread
    this.centerR.y = height* (this.y + this.h/2 - 0.01)
    this.centerL.x = width * (this.w/2 + this.x) - width * this.spread
    this.centerL.y = this.centerR.y
    this.radiusX = width*0.048
    this.radiusS = width*0.014
    this.p.fill(255, 255, 255, 0)
    this.p.circle(this.centerR.x, this.centerR.y, this.radiusX)
    this.p.circle(this.centerL.x, this.centerL.y, this.radiusX)
    this.p.fill(0, 0, 0, 255)
    this.p.circle(this.centerR.x + this.offsetR.x, this.centerR.y + this.offsetR.y, this.radiusS)
    this.p.circle(this.centerL.x + this.offsetL.x, this.centerL.y + this.offsetL.y, this.radiusS)
  }

  update () {
    this.offsetR = {x:0,y:0}
    this.offsetL = {x:0,y:0}
  }

}