seaside
removeDevelopmentToolbar
	#(self seasideApplicationName)
		do: [ :applicationName | 
			| configuration |
			configuration := (WADispatcher default handlerAt: applicationName) configuration.
			configuration
				takeValue: {}
				forAttribute: (configuration attributeAt: #rootDecorationClasses) ]