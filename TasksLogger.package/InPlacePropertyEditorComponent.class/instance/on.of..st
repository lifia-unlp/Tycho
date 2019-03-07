initialization
on: aSelector of: anObject
	setSelector := (aSelector , ':') asSymbol.
	getSelector := aSelector.
	label := aSelector asCamelCase.
	subject := anObject