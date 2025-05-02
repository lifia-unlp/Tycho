request handling
getVariable: variableId for: sessionId
	"API endpoint that retrieves the given variable within the experiment session with the specified ID"
	<get>
	<path: '/sessions/{sessionId}/variables/{variableId}'>

	| variableAsJson |
	variableAsJson := api variable: variableId for: sessionId.
	variableAsJson
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'There is no variable with id ' , variableId , ' in session with id ', sessionId ] ]
		ifNotNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: variableAsJson ] ]