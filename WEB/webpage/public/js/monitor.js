
function main () {
  new p5(sketch, 'monitor');
}

function sketch (p) {
  let width
  let height
  const controller = new Controller(p)
  
  updateSize = ()=>{
    const parent = document.getElementById('monitor');
    width = parent.offsetWidth
    height = parent.offsetHeight
    p.createCanvas(width, height)
  }

  p.setup = ()=>{
    updateSize ()
    p.background(0)
    controller.setup()
  }

  update = ()=>{
    updateSize()
    controller.update()
  }

  p.draw = ()=>{
    update()
    p.clear()
    controller.draw(width, height)
  }
}