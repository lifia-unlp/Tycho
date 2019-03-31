globals
variable: variableId for: protocolId
	^ self sessions
		detect: [ :each | each protocols anySatisfy: [ :protocol | protocol id = protocolId ] ]
		ifFound: [ :found | found variableWithId: variableId ]
		ifNone: [ nil ]