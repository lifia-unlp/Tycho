deployment
prepareForDeployment
	self
		unregisterDevelopmentApplications;
		startServer;
		setupMongoDatabase