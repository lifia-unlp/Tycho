testing
testGetValue
	"Checks the method that resolves a reference to a given variable"
			
	| variableRef |
	variableRef := ExperimentVariableReference variableId: 'testVar'.	
	self assert: (variableRef getValue: botParticipant) equals: 'initialValue'.
	
	(botParticipant session variableWithId: 'testVar') value: 'changedValue'.
	self assert: (variableRef getValue: botParticipant) equals: 'changedValue'.
	
	
	
