retrieving
protocolId: id
	| allProtocols |
	allProtocols := self sessions flatCollect: [ :session | session protocols ].
	^ allProtocols detect: [ :each | each id = id ] ifNone: [ ^ nil ]