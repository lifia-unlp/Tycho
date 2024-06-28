printing
printOn: aStream
	aStream nextPutAll: self variableId.
	aStream space.
	aStream nextPutAll: '(var)'