seaside
unregisterDevelopmentApplications
	| requiredHandlersNames allHandlers |
	requiredHandlersNames := #('tracker').
	allHandlers := WADispatcher default handlers.
	allHandlers
		keysAndValuesDo: [ :handlerName :handler | 
			(requiredHandlersNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]