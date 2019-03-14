callbacks
cloneProtocol: protocol
	| clone |
	protocol notNil
		ifTrue: [ clone := self store cloneProtocol: protocol.
			self experimentSession addProtocol: clone.
			self store rememberToSave: clone.
			clone tasks do: [ :each | self store rememberToSave: each ].
			self store save: self experimentSession ]