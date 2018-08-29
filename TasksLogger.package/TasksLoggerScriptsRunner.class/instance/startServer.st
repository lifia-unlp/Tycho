deployment
startServer
	ZnZincServerAdaptor default ifNotNil: [ :adapter | adapter stop ].
	ZnZincServerAdaptor startOn: port.