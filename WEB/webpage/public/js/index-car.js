
async function printJson () {
    axios.get('http://localhost:8082')
    .then(function (response) {
        document.getElementById("json").innerHTML = JSON.stringify(response.data, undefined, 2);
    })
    .catch(function (err) {
        document.getElementById("json").innerHTML = '<b>Arduino is not responding: </b>' + err
    });
}

function setupDocument() {
    const ip = '0.0.0.0'
    const port = '8081'
    const url_querry = '?ip='+ip+'&port='+port
    const monitor = document.getElementById('monitor')
    monitor.href = 'http://'+ip+':'+port+'/html/monitor.html'+url_querry
    const face = document.getElementById('face')
    face.href = 'http://'+ip+':'+port+'/html/face.html'+url_querry
}

function main () {
    setupDocument()
    new p5(sketch, 'car-canvas');
}

let _width
let _height
let desviation_color1 = 0
let desviation_color2 = 0
let desviation_color3 = 0
let tronX
let margin_r
let margin_l
let a
let b
let c
let d
let speed
let precission = 4

function sketch (p) {
    function updateSize () {
        const parent = document.getElementById('car-canvas');
        _width = parent.offsetWidth
        _height = parent.offsetHeight
        a = _width * 0.15
        b = _width * 0.08
        c = _width * 0.09
        d = _width * 0.02
        margin_r = _width * 0.05 + a
        margin_l = _width * 0.05
        speed = _width * 0.006 * (speed > 0 ? 1 : -1)
        p.createCanvas(parent.offsetWidth, parent.offsetHeight)
    }

    p.setup = ()=>{
        updateSize ()
        tronX = _width * 0.05
        p.background(0);
    }

    p.draw = ()=>{   
        updateSize ()
        p.clear()   
        p.fill(0+desviation_color1,0+desviation_color2,0+desviation_color3)
        p.rect(tronX, c, a, b, d)
        p.fill(255-desviation_color1,255-desviation_color2,255-desviation_color3)
        p.ellipse(tronX, a, b, b)
        p.ellipse(tronX + a, a, b, b)
        for (let i = 0; i < precission; ++i){
            tronX = tronX + (speed/precission)
            if (tronX > (_width - margin_r) && speed > 0) {
                speed = speed * -1
            }else if (tronX < margin_l && speed < 0) {
                speed = speed * -1
            }
        }
    }
}

function onClick() {
    desviation_color1 = Math.random()*254 + 1
    desviation_color2 = Math.random()*254 + 1
    desviation_color3 = Math.random()*254 + 1
}

