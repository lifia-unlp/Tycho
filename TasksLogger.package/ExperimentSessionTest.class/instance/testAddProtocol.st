testing
testAddProtocol
	protocol
		addTask: messageTaskOne;
		addTask: messageTaskTwo.
	session addProtocol: protocol.
	self
		assertCollection: (session variables collect: [ :each | each id ]) asSet
		equals: (Set with: 'one' with: 'two' with: 'three').