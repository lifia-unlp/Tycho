deployment
removeDevelopmentToolbar
	| configuration |
	configuration := (WADispatcher default handlerAt: 'tycho') configuration.
	configuration takeValue: {} forAttribute: (configuration attributeAt: #rootDecorationClasses)