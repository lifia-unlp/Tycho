protocols
protocolId: aString
	^ repository selectOne: ExperimentProtocol where: [ :each | each id = aString ]