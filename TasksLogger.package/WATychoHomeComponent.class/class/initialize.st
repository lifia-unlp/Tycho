class initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'tycho'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary