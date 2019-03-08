common
registerNotebook
	| app |
	app := WAAdmin register: WATychoHomeComponent asApplicationAt: 'tycho'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary