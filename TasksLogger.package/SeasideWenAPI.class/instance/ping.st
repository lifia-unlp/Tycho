request handling
ping
	<get>
	<path: '/ping'>
	self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				contentType: WAMimeType applicationJson;
				status: WAResponse statusOk;
				nextPutAll: 'pong' ]