var express = require('express'),
    http = require('http');

var app = express();

var port = 5000;

app.get('/', function(req, res) {
    res.send('Hello World');
});

var server = http.createServer(app);

server.on('listening', function() {
    console.log('Express server listening on port ' + port);
});

server.listen(port);
// server.listen(port, '0.0.0.0');

setInterval(function(){
    console.log('running');
}, 5000);
