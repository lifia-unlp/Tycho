class initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tycho')
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary;
		addLibrary: TBSJasnyDeploymentLibrary;
		addLibrary: WATychoFileLibrary;
		exceptionHandler: WADebugErrorHandler;
		sessionClass: WATychoSession;
		preferenceAt: #resourceBaseUrl put: 'http://localhost:8080'