validation
ifValid: aBlock
	^ self isValid
		ifTrue: [ aBlock value ]