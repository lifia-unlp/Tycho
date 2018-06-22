seaside
startDevelopmentServer
	ZnZincServerAdaptor default ifNotNil: [ :adapter | adapter stop ].
	ZnZincServerAdaptor startOn: self developmentPort