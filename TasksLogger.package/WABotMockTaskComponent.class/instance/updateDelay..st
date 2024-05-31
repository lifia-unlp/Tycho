callbacks
updateDelay: aValue
	"Set the given value to the delay input field. Then validates that the given value. 
	If pass the validation rules, removes field errors. Otherwise, add the error to the field."

	self delay: aValue.
	(aValue isAllDigits) ifFalse: [ 
		^ self errors at: 'delay' put: 'The delay must be an integer value'.
	 ].
	"Remove field errors only if the field pass the validation rules"
	self errors removeKey: 'delay' ifAbsent: [].
