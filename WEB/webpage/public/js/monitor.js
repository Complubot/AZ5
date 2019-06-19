
let last_recived = {}
let ok = false

function connectionUP () {
  const parent = document.getElementById('connection-state')
  parent.innerHTML = ''+
  '<span class="badge badge-success">'+
    '<h1>Connected</h1>' +
  '</span>'
  ok = true
}

function connectionDown(){
  const parent = document.getElementById('connection-state')
  parent.innerHTML = ''+
  '<span class="badge badge-danger">'+
    '<h1>Connection Failed</h1>' +
  '</span>'
  ok = false
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function main () {
  connectionDown()
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

  update = async ()=>{
    try {
      const response = await axios.get('http://10.42.0.1:9090');
      last_recived = response.data
      if (!ok){
        connectionUP()
      }
    } catch (error) {
      if (ok){
        connectionDown()
      }
    }
    for (const element of elements){element.update(last_recived)}
    await sleep(50)
  }

  p.draw = ()=>{
    update()
    resize()
    p.clear()
    for (const element of elements){element.draw()}
  }
}

function map (value, in_min, in_max, out_min, out_max) {
  return (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
}

function constrain (value, min, max){
  if(value > max){
    return max
  } else if (value < min){
    return min
  }else{
    return value
  }
}