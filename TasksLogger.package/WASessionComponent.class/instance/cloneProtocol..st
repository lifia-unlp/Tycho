controlling
cloneProtocol: protocol
	| clone |
	protocol notNil
		ifTrue: [ clone := protocol clone.
			clone id: self store newExperimentId.
			clone name: 'A copy of ' , clone name.
			self session addProtocol: clone.
			self store rememberToSave: clone.
			self store rememberToSave: self session.
			self store savePending ]