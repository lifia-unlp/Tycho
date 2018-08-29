common
registerNotebook
	| app |
	app := WAAdmin register: WAExperimentNotebookComponent asApplicationAt: 'tycho'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary