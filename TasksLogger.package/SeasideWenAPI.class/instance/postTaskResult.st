request handling
postTaskResult
	<post>
	<path: '/task-results/'>
	api postNewTaskResult: self requestContext request rawBody.
	^ 'Ok'