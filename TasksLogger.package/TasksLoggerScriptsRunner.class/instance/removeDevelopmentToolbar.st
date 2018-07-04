deployment
removeDevelopmentToolbar
	| configuration |
	configuration := (WADispatcher default handlerAt: 'wen') configuration.
	configuration takeValue: {} forAttribute: (configuration attributeAt: #rootDecorationClasses)