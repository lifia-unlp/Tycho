validation
isInvalid: aSelector
	^ (self validatorsFor: aSelector) anySatisfy: [ :validator | validator fails ]