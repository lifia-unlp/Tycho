deployment
prepareForDeployment
	self
		unregisterDevelopmentApplications;
		setupServer;
		setupMongoDatabase