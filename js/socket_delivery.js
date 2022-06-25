// const socket = io('http://localhost:3000/');
const socket = io('https://socketserver.happy-fry.com/');

// DOM elements
let message = document.getElementById('message');
// let username = document.getElementById('username');
// let btn = document.getElementById('send');
// let output = document.getElementById('output');
// let actions = document.getElementById('actions');

// btn.addEventListener('click', function () {
//     socket.emit('chat:message', {
//         username: username.value,
//         message: message.value,
//     });
// });
const audio = document.getElementById("sonido");

socket.on('chat:message', function (data) {
    console.log(data);

    message.innerHTML += `<div class="alert alert-success" role="alert">
          <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
          Se registraron nuevos pedidos
        </div>`;

    audio.play();
    setTimeout(() => {
        window.location.reload();
    }, 1000);

});