retrieving
experimentId: id
	^ self experiments detect: [ :each | each id = id ] ifNone: [ ^ nil ]