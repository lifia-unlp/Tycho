deployment
removeDevelopmentToolbar
	| configuration |
	configuration := (WADispatcher default handlerAt: self applicationName) configuration.
	configuration takeValue: {} forAttribute: (configuration attributeAt: #rootDecorationClasses)