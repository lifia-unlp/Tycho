retrieving
experimentId: id
	^ self protocols detect: [ :each | each id = id ] ifNone: [ ^ nil ]