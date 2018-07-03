development
startTeapotDevelopmentServer
	TeapotRESTAPI singleton
		initializeOnPort: self teapotDevelopmentPort;
		configureRoutes;
		start