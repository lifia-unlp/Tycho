private
valueFromSubject
	| value |
	value := subject perform: getSelector.
	value isString
		ifFalse: [ value := 'Error: ' , getSelector printString
				, ' should return a String - got a '
				, (value printStringLimitedTo: 100) ].
	^ value