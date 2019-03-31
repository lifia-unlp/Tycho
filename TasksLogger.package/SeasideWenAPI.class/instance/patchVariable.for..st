request handling
patchVariable: id for: protocolId
	<patch>
	<path: '/variables/{id}?protocol={protocolId}'>
	api variableSemaphore: self requestContext request rawBody for: protocolId.
	^ 'Ok'