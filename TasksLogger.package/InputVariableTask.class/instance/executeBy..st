executing
executeBy: anExperimentParticipant
	"Executes a protocol task that sets a new value to the given variable in the experiment session"
			
	| variable |
	variable:= anExperimentParticipant session variableWithId: self variableId.
	variable value: (self value getValue: anExperimentParticipant).
	