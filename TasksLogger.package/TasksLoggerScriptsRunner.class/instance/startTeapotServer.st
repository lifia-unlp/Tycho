teapot
startTeapotServer
	TeapotRESTAPI singleton
		initializeOnPort: self teapotDeploymentPort;
		configureRoutes;
		start