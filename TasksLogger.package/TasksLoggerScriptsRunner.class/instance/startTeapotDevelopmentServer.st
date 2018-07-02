teapot
startTeapotDevelopmentServer
	TeapotTaskLoggerService singleton
		initializeOnPort: self teapotDevelopmentPort;
		configureRoutes;
		start