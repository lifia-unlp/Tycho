prototypes
messageScreenPrototype
	^ self new
		name: 'Message screen';
		notes: 'Blocks the entire screen to give the participant a message.';
		componentClassname: 'MessageComponent';
		addProperty: 'title' describedBy: 'A title for this message.' value: 'Important!';
		addProperty: 'message'
			describedBy: 'An importante message for the participant. Can be basic html or plain text.'
			value: 'Pay attention to the instructions';
		becomePrototype