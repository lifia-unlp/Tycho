I represent a constant value (text) associated with a property or attribute of a model object.

I know how to get the value of a property for the participant who needs it.


Public API and Key Messages

- getValue: anExperimentParticipant
- value
- value: aString
- (for bonus points) how to create instances.
	
	value:= ExperimentValueHolder value: 'example'.
	 
Internal Representation and Key Implementation Points.

	Instance Variables
		value:		< String> A constant value based on a string

    Implementation Points