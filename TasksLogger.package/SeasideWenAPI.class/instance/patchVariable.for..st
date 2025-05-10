request handling
patchVariable: variableId for: sessionId
	"API endpoint that updates the value of the given variable within the experiment session with the specified ID"
	<patch>
	<path: '/sessions/{sessionId}/variables/{variableId}'>
	
	| variableAsJson |
	variableAsJson := api updateVariable: variableId for: sessionId  with: self requestContext request rawBody.
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