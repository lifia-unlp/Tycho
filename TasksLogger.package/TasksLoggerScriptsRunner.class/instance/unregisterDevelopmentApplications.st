seaside
unregisterDevelopmentApplications
	| requiredHandlersNames allHandlers |
	requiredHandlersNames := #('tasks').
	allHandlers := WADispatcher default handlers.
	allHandlers
		keysAndValuesDo: [ :handlerName :handler | 
			(requiredHandlersNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]