instance creation
id: aString session: anExperimentSession value: aValueString
	"Creates a new experiment variable with the identifier and value given for the specified session"
	
	^ (self new) 
		id: aString session: anExperimentSession value: aValueString; 
		yourself