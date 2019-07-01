
let ip = '0.0.0.0'
let port = '8081'

function setupDocument(){
    let url_parameters = []
    location.search.replace("?","").split("&").forEach(function(d){e=d.split("=");url_parameters[e[0]]=e[1]})
    ip = url_parameters['ip']
    port = url_parameters['port']
    const back = document.getElementById('back')
    back.href = 'http://'+ip+':'+port+'/'
}

function main() {
    setupDocument()
    createFace(smile)
}

function createFace (smile) {
    format_smile = (smile && smile > 0 && smile < 5) ? smile : 2
    const face = {head: {}, eyebrows: [{}, {}], eyes: [{}, {}], nose: {}, mouth: {}, hair: {}};
    face.fatness = 0.6;
    const colors = ["#f2d6cb", "#ddb7a0", "#ce967d", "#bb876f", "#aa816f", "#a67358", "#ad6453", "#74453d", "#5c3937"];
    face.color = colors[0];
    face.head = {id: 0};
    const id = 0;
    face.eyebrows[0] = {id: id, lr: "l", cx: 135, cy: 250};
    face.eyebrows[1] = {id: id, lr: "r", cx: 265, cy: 250};
    const angle = 8;
    const id2 = 3;
    face.eyes[0] = {id: id2, lr: "l", cx: 135, cy: 280, angle: angle};
    face.eyes[1] = {id: id2, lr: "r", cx: 265, cy: 280, angle: angle};
    const flip = false;
    face.nose = {id: 1, lr: "l", cx: 200, cy: 330, size: 0.4, posY: undefined, flip: flip};
    face.mouth = {id: format_smile, cx: 200, cy: 400};
    face.hair = {id: 1};
    const container = document.getElementById('assistant')
    faces.display (container, face)
}