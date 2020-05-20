callbacks
cloneProtocol: protocol
	| clone |
	protocol notNil
		ifTrue: [ clone := self store cloneProtocol: protocol.
			self experimentSession addProtocol: clone.
			self store rememberToSave: clone.
			clone tasks do: [ :task | self store rememberToSave: task ].
			self experimentSession protocols do: [ :p | self store rememberToSave: p ].
			self store save: self experimentSession ]