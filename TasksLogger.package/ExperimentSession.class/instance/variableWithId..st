globals
variableWithId: anId
	^ variables detect: [ :each | each id = anId ] ifNone: [ nil ]