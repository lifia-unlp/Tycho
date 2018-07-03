initialize - release
initialize
	| app |
	super initialize.
	app := WAAdmin register: self asApplicationAt: 'wen'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary