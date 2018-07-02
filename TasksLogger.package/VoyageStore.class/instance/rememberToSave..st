saving
rememberToSave: anObject
	(objectsToSave includes: anObject)
		ifFalse: [ objectsToSave add: anObject ]