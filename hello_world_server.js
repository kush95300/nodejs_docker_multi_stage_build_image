const http = require('http');

const server = http.createServer((request,response)=>{
	response.end("Hello, World from Javascript Server");
});

server.listen(5000,()=>{
	console.log("Server is Running ...");
});
