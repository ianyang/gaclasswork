var http = require('http');

var server = http.createServer(function(req, res) {
  res.writeHead(200, {"Content-Type": "text/plain"});
  var pathname = url.parse(req.url).pathname;
  res.write('Hello World');
  res.end();

});

server.listen(3000);