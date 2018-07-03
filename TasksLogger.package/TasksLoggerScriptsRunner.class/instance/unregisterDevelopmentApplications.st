deployment
unregisterDevelopmentApplications
	| requiredHandlersNames allHandlers |
	requiredHandlersNames := self requiredApplications.
	allHandlers := WADispatcher default handlers.
	allHandlers
		keysAndValuesDo: [ :handlerName :handler | 
			(requiredHandlersNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]