callbacks
addNewProtocol
	| newProtocol |
	newProtocol := ExperimentProtocol name: 'Unnamed protocol' notes: ''.
	self
		call: (WAProtocolComponent on: newProtocol)
		onAnswer: [ :answer | 
			answer
				ifNotNil: [ self session account addProtocol: newProtocol.
					self store save: self session account ] ]