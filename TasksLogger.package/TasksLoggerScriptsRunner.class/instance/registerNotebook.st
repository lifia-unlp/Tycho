seaside
registerNotebook
	| app |
	app := WAAdmin
		register: WAExperimentNotebookComponent
		asApplicationAt: self seasideApplicationName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary.
	^ app