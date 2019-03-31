testing
testVariableWithId
	protocol
		addTask: messageTaskOne;
		addTask: messageTaskTwo.
	session addProtocol: protocol.
	self assert: (session variableWithId: 'one') notNil.
	self assert: (session variableWithId: 'four') isNil