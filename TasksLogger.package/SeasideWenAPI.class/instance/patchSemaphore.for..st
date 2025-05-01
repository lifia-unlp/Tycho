request handling
patchSemaphore: semaphoreId for: sessionId
	"API endpoint that updates the value of the given semaphore within the experiment session with the specified ID"
	<patch>
	<path: '/sessions/{sessionId}/semaphores/{semaphoreId}'>
	
	| semaphoreAsJson |
	semaphoreAsJson := api updateSemaphore: semaphoreId for: sessionId with: self requestContext request rawBody.
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
