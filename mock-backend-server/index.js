//usage node index.js 8000

let httpPort = parseInt(process.argv[2]);
let serverName = process.argv[3];

var ServerMock = require("mock-http-server");

var server = new ServerMock({ host: "127.0.0.1", port: httpPort });

server.start(function() {
	console.log("Backend server '" + serverName + "' running on port " + httpPort);
});

server.on({
	method: 'GET',
	path: '/api/data',
	reply: {
		status:  200,
		headers: { "content-type": "application/json" },
		body: JSON.stringify({ backendServerName: serverName, hello: "world" })
	}
});