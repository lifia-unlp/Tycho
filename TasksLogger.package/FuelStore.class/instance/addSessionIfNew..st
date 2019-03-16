private
addSessionIfNew: aSession
	(sessions includes: aSession)
		ifFalse: [ sessions add: aSession ]