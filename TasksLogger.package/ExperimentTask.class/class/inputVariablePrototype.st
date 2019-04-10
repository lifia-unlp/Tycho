prototypes
inputVariablePrototype
	^ self new
		name: 'Input variable';
		notes: 'Asks the user for a value. The value will be assigned to a protocol variable';
		componentClassname: 'InputVariableComponent';
		becomePrototype;
		addProperty: 'instructions'
			describedBy: 'Instructions for the participant. Can be html or plain text.'
			value: 'Choose a number between 1 and 100';
		addProperty: 'variableName' describedBy: 'The name of the variable that will hold the value the user enters.' value: 'var', Character alphabet atRandom asString asUppercase 