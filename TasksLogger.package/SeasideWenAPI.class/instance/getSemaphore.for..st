request handling
getSemaphore: semaphoreId for: sessionId
	"API endpoint that retrieves the given semaphore within the experiment session with the specified ID"
	<get>
	<path: '/sessions/{sessionId}/semaphores/{semaphoreId}'>
	
	| semaphoreAsJson |
	semaphoreAsJson := api semaphore: semaphoreId for: sessionId.
	semaphoreAsJson
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'There is no semaphore with id ' , semaphoreId , ' in session with id ', sessionId ] ]
		ifNotNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: semaphoreAsJson ] ]