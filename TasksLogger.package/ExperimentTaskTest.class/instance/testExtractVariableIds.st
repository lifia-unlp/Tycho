testing
testExtractVariableIds
	| message |
	message := ExperimentTask messageScreenPrototype clone.
	message
		atProperty: 'message'
		setValue: 'an example with <tyvar var="one"/> once, and <tyvar var="tWo"/> <tyvar var=''two''/> twice'.
	self assert: message extractVariableIds size equals: 2.
	self assertCollection: message extractVariableIds equals: (Set with: 'one' with: 'two')