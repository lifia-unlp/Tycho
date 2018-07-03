teapot
startTeapotServer
	TeapotRESTAPI singleton stop.
	TeapotRESTAPI singleton 
		initializeOnPort: self teapotDeploymentPort;
		configureRoutes;
		start