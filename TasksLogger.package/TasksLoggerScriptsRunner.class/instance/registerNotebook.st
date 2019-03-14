common
registerNotebook
	| app |
	app := WAAdmin register: WATychoFrontendTask asApplicationAt: 'tycho'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary;
		addLibrary: TBSJasnyDeploymentLibrary;
		addLibrary: WATychoFileLibrary;
		exceptionHandler: WADebugErrorHandler;
		sessionClass: WATychoSession