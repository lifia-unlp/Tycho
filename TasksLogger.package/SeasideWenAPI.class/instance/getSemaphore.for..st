request handling
getSemaphore: id for: workspace
	<get>
	<path: '/semaphores/{id}?workspace={workspace}'>
	| semaphoreAsJson |
	semaphoreAsJson := api semaphore: id forWorkspace: workspace.
	semaphoreAsJson
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'There are no semaphores with id: ' , id ] ]
		ifNotNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: semaphoreAsJson ] ]