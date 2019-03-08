request handling
getProtocol: id
	<get>
	<path: '/protocols/{id}'>
	| experimentAsJson |
	experimentAsJson := api protocol: id.
	^ experimentAsJson
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'There are no protocols with id: ' , id ] ]
		ifNotNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: experimentAsJson ] ]