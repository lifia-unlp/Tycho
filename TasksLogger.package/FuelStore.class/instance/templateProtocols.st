accessing
templateProtocols
	^ templateProtocols
		ifNil: [ self attemptToInitializeFromFile.
			templateProtocols ]