request handling
patchSemaphore: id for: protocolId
	<patch>
	<path: '/semaphores/{id}?protocol={protocolId}'>
	^ api updateSemaphore: self requestContext request rawBody for: protocolId