// require a 'module' called net
var net = require('net');
var clients = [];


// create our server
var server = net.createServer(function(socket) {

  // add each socket to a global array 'clients'
  clients.push(socket);

  // accept data from a socket
  socket.on('data', function(data) {

    for (var i=0; i<clients.length; i++) {
      clients[i].write(data);
    }
  });

  // remove dead connections
  socket.on('end'), function() {
    var i = clients.indexOf(socket)
    clients.splice(i, 1); //removing that element from the array
  }

});

// start server
console.log('server started');
server.listen(8000);