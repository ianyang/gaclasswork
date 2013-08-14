// require boiler plate for express
var express = require('express');
var app = express();
var clients = [];
var clientName

// add socket.io to the project
var server = require('http').createServer(app)
var io = require('socket.io').listen(server)

// defining our 'routes'
app.get('/', function(req, res) {
  res.sendfile(__dirname + '/index.html');
});

// define behaviour for an individual socket
io.sockets.on('connection', function(socket) {

  clients.push(socket);
  clientName = socket.id

  // logged on
  logOn = clientName + " logged on"
  io.sockets.emit('log on', logOn);

  // submit message
  socket.on('send message', function(data) {
    // console.log(data);
    new_data = clientName + " says: " + data
      io.sockets.emit('new message', new_data);
  });

  // disconnected
  socket.on('disconnect user', function() {
    var i = clients.indexOf(socket)
    clients.splice(i, 1); //removing that element from the array
    console.log(clientName+' signed-off');
  });

});

server.listen(8000);