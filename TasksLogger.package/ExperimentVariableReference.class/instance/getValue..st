accessing
getValue: anExperimentParticipant 
	"Returns the current value of the variable referenced by this object"	
			
	^ (anExperimentParticipant session variableWithId: self variableId) value.