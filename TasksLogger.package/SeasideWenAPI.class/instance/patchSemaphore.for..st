request handling
patchSemaphore: id for: workspace
	<patch>
	<path: '/semaphores/{id}?workspace={workspace}'>
	self halt. 
	api updateSemaphore: self requestContext request rawBody.
	^ 'Ok'