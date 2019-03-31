request handling
patchVariable: id for: protocolId
	<patch>
	<path: '/variables/{id}?protocol={protocolId}'>
	^ api updateVariable: self requestContext request rawBody for: protocolId