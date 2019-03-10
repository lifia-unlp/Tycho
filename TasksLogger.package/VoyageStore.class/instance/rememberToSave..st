saving
rememberToSave: anObject
	anObject class isVoyageRoot
		ifTrue: [ dirtyObjects add: anObject ]