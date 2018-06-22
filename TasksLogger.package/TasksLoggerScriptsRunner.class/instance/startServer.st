seaside
startServer
	ZnZincServerAdaptor default ifNotNil: [ :adapter | adapter stop ].
	ZnZincServerAdaptor startOn: self deploymentPort