seaside
unregisterDevelopmentApplications
	| requiredHandlersNames allHandlers |
	requiredHandlersNames := Set with: self seasideApplicationName.
	allHandlers := WADispatcher default handlers.
	allHandlers
		keysAndValuesDo: [ :handlerName :handler | 
			(requiredHandlersNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]