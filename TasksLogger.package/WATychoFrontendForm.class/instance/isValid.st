validation
isValid
	^ self validators allSatisfy: [ :validator | validator passes ]