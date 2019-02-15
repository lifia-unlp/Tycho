request handling
postSemaphore: id
	<post>
	<path: '/semaphores/{id}'>
	api updateSemaphore: self requestContext request rawBody.
	^ 'Ok'