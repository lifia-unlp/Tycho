common
registerNotebook
	| app |
	super initialize.
	app := WAAdmin register: WAExperimentNotebookComponent asApplicationAt: self applicationName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary