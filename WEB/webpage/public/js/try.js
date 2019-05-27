
const _width = document.documentElement.clientWidth * 0.8
const _height = document.documentElement.clientHeight * 0.29

async function printJson () {
    axios.get('http://localhost:8082')
    .then(function (response) {
        document.getElementById("json").innerHTML = JSON.stringify(response.data, undefined, 2);
    })
    .catch(function (err) {
        document.getElementById("json").innerHTML = '<b>Arduino is not responding: </b>' + err
    });
}

function setup(){
    var canvas = createCanvas(_width, _height)
    canvas.parent('jumbo-canvas')
    printJson();
}

var desviation_color1 = 0;
var desviation_color2 = 0;
var desviation_color3 = 0;
let tronX = _width * 0.05
let margin_r = _width * 0.35 + 50
let margin_l = _width * 0.05
let a = _width * 0.15
let b = _width * 0.08
let c = _width * 0.09
let d = _width * 0.02
let speed = _width * 0.006
let precission = 4

function draw() {   
    clear()   
    fill(0+desviation_color1,0+desviation_color2,0+desviation_color3)
    rect(tronX, c, a, b, d)
    fill(255-desviation_color1,255-desviation_color2,255-desviation_color3)
    ellipse(tronX, a, b, b)
    ellipse(tronX + a, a, b, b)
    
    for (let i = 0; i < precission; ++i){
        tronX = tronX + (speed/precission)
        if (tronX > (_width - margin_r) || tronX < margin_l) {
            speed = speed * -1
        }
    }
}

function onClick() {
    desviation_color1 = Math.random()*254 + 1
    desviation_color2 = Math.random()*254 + 1
    desviation_color3 = Math.random()*254 + 1
}

