common
registerNotebook
	| app |
	app := WAAdmin register: WAExperimentNotebookComponent asApplicationAt: 'wen'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary