request handling
get: id
	<get>
	<path: '/experiments/{id}'>
	self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				contentType: WAMimeType applicationJson;
				status: WAResponse statusOk;
				nextPutAll: (api experiment: id) ]