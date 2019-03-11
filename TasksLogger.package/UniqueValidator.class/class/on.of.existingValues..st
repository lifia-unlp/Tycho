instance creation
on: aSelector of: anObject existingValues: existingValues
	^ (self on: aSelector of: anObject)
		existingValues: existingValues;
		yourself