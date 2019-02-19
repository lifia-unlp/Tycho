callbacks
addNewWorkspace
	self
		call: (WAWorkspaceComponent on: ExperimentWorkspace new)
		onAnswer: [ :newWorkspace | self store addWorkspace: newWorkspace ]