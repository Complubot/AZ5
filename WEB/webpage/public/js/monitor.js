
function main () {
  new p5(sketch, 'monitor');
}

function sketch (p) {
  let width = 0
  let height = 0
  const elements = [new Controller(p), new Ultrasounds(p, 16)]
  const parent = document.getElementById('monitor');
  
  resize = ()=>{
    if ((parent.offsetWidth!=width) || (parent.offsetHeight!=height)){
      width = parent.offsetWidth
      height = parent.offsetHeight
      p.createCanvas(width, height)
      for (const element of elements){element.resize(width,height)}
    }
  }

  p.setup = ()=>{
    p.background(0)
    for (const element of elements){element.setup()}
    resize ()
  }

  update = ()=>{
    for (const element of elements){element.update()}
  }

  p.draw = ()=>{
    update()
    resize()
    p.clear()
    for (const element of elements){element.draw()}
  }
}