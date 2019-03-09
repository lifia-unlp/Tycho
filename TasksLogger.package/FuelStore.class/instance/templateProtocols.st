protocols
templateProtocols
	^ templateProtocols
		ifNil: [ self attemptToInitializeFromFile.
			templateProtocols ]