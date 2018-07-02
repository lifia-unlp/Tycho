teapot
startTeapotServer
	TeapotTaskLoggerService singleton
		initializeOnPort: self teapotDeploymentPort;
		configureRoutes;
		start