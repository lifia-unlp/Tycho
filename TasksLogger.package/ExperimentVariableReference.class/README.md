I represent a reference to a variable specified in a property or attribute of a model object.

I know how to get the value of a property for the participant who needs it.


Public API and Key Messages

- getValue: anExperimentParticipant
- variableId
- variableId: aString
- (for bonus points) how to create instances.
	
	varRef:= ExperimentVariableReference variableId: 'exampleVar'.
	 
Internal Representation and Key Implementation Points.

	Instance Variables
		variableId:		< String> Name of the experiment variable that is used to get the value of a property in the model

    Implementation Points