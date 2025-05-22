request handling
updateTaskResultOf: taskId runBy: participantId
	"API endpoint to save the result of the given task performed by the specified participant"
	<post>
	<path: '/participants/{participantId}/tasks/{taskId}/result'>
	| jsonResult |
	
	jsonResult:= api updateTaskResultOf: taskId runBy: participantId with: self requestContext request rawBody.
	^ jsonResult
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'An error occurred while trying to save the task result for the participant ' , participantId ] ]
		ifNotNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: jsonResult ] ]