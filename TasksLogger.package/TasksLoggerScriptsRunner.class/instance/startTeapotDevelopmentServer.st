teapot
startTeapotDevelopmentServer
	TeapotRESTAPI singleton
		initializeOnPort: self teapotDevelopmentPort;
		configureRoutes;
		start