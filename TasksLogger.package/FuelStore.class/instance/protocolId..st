retrieving
protocolId: id
	^ self sessionProtocols detect: [ :each | each id = id ] ifNone: [ ^ nil ]