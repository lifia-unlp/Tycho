callbacks
cloneProtocol: protocol
	| clone |
	protocol notNil
		ifTrue: [ clone := self store cloneProtocol: protocol.
			self session addProtocol: clone.
			self store rememberToSave: clone.
			clone tasks do: [ :each | self store rememberToSave: each ].
			self store rememberToSave: self session.
			self store savePending ]