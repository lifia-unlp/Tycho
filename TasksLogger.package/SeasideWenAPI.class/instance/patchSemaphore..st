request handling
patchSemaphore: id
	<patch>
	<path: '/semaphores/{id}'>
	api updateSemaphore: self requestContext request rawBody.
	^ 'Ok'