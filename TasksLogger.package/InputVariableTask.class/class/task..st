instance creation
task: anExperimentTask
	"Creates a bot task that sets a new value to the variable specified in the given protocol task.
	The new value of the variable must be specified by the designer of the bot during its setup."
	"TODO: Throw error if the protocol task does not have a propery called 'variableName'"
			
	^ (super task: anExperimentTask) 
			variableId: (anExperimentTask atProperty: 'variableName')