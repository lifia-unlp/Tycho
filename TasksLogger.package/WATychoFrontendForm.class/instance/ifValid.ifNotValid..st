validation
ifValid: aBlock ifNotValid: alternativeBlock
	^ self isValid
		ifTrue: [ aBlock value ]
		ifFalse: [ alternativeBlock value ]