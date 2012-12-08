/* jslint node: true */

var http = require('http'),
    server;


server = http.createServer(function (req, res) {
    res.writeHead('200', {'Content-Type': 'text/plain'});
    res.end('Hello world!');
}).listen(8001);