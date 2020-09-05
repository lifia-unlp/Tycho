protocols
newProtocol
	| newProtocol |
	newProtocol := ExperimentProtocol name: 'New Protocol' notes: ''.
	newProtocol id: self newProtocolId.
	^ newProtocol