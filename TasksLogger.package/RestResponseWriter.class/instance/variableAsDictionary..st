print
variableAsDictionary: variable
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: variable id;
		at: 'value' put: variable value.
	^ dict