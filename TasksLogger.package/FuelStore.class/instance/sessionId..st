retrieving
sessionId: id
	^ self sessions detect: [ :each | each id = id ] ifNone: [ ^ nil ]