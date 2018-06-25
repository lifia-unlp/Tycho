initialize - release
initialize
	| app |
	super initialize.
	app := WAAdmin register: self asApplicationAt: 'TaskLogger'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary