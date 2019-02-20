callbacks
addNewWorkspace
	self
		call: (WAWorkspaceComponent on: ExperimentWorkspace new)
		onAnswer: [ :workspaceOrNil | 
			workspaceOrNil
				ifNotNil: [ :workspace | self store addWorkspace: workspace ] ]