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
		addLibrary: Highcharts8OnlineLibrary;
		exceptionHandler: WADebugErrorHandler;
		sessionClass: WATychoSession