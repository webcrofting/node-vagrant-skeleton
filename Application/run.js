/* jslint node: true */

var http = require('http'),
    server;


server = http.createServer(function (req, res) {
    res.writeHead('200', {'Content-Type': 'text/plain'});
    res.end('node server is working');
}).listen(8001);