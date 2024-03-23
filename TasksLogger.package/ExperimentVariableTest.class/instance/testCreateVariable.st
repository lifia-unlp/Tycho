testing
testCreateVariable
	"Checks the creation and initialization of an experiment variable"
			
	| variable |
	variable := ExperimentVariable id: 'testVar' session: session  value: 'test'.
	
	self assert: variable id equals: 'testVar'.
	self assert: variable value equals: 'test'.