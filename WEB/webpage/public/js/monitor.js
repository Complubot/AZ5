
let last_recived = {}

function main () {
  const socket = new WebSocket('ws://localhost:9090')
  socket.onopen = () => {
    const parent = document.getElementById('connection-state')
    parent.innerHTML = ''+
    '<span class="badge badge-success">'+
      '<h1>Connected</h1>' +
    '</span>'
  }
  socket.onclose = () => {
    const parent = document.getElementById('connection-state')
    parent.innerHTML = ''+
    '<span class="badge badge-danger">'+
      '<h1>Connection Closed</h1>' +
    '</span>'
  }
  socket.onerror = () => {
    const parent = document.getElementById('connection-state')
    parent.innerHTML = ''+
    '<span class="badge badge-danger">'+
      '<h1>Connection Closed</h1>' +
    '</span>'
  }
  socket.onmessage = (event) => { 
    last_recived.controller = JSON.parse(event.data)
  }
  new p5(sketch, 'monitor');
}

function sketch (p) {
  let width = 0
  let height = 0
  const parent = document.getElementById('monitor')
  const elements = [new Controller(p), new Ultrasounds(p, 16)]
  
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
    for (const element of elements){element.update(last_recived)}
  }

  p.draw = ()=>{
    update()
    resize()
    p.clear()
    for (const element of elements){element.draw()}
  }
}

function map (value, min_in, max_in, min_out, max_out) {
  return  (value - min_in) * (max_out - min_out) / (max_in - min_in) + min_out
}