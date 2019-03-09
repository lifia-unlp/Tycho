callbacks
cloneProtocol: protocol
	| clone |
	protocol notNil
		ifTrue: [ clone := self store cloneProtocol: protocol.
			self session addProtocol: clone.
			self store rememberToSave: clone.
			self store rememberToSave: self session.
			self store savePending ]