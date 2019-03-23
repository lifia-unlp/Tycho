*TasksLogger
uncameled
	| stream uncameled |
	stream := WriteStream on: ''.
	self
		do: [ :char | 
			char isUppercase
				ifTrue: [ stream nextPut: Character space ].
			stream nextPut: char asLowercase ].
	uncameled := stream contents.
	uncameled at: 1 put: uncameled first asUppercase.
	^ uncameled