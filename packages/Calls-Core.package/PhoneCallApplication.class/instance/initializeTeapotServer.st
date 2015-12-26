teapot
initializeTeapotServer

	teapotServer := Teapot on.
	teapotServer
		serveStatic: '/static' from: 'C:\Apache24\htdocs\Photoshop\calls';
		GET: '/welcome' -> 'Hello World!';
		PUT: '/calls/<from>' -> [ :request | self registerCallFrom: request ];
		GET: '/bill/<from>/<monthOfYear>' -> [ :request | self getBillFrom: request ];
		start