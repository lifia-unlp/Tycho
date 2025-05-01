globals
participantWithId: participantId
	^ participants detect: [ :each | each id = participantId ] ifNone: [ nil ]