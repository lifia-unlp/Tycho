private
addSessionIfNew: aSession
	(self sessions includes: aSession)
		ifFalse: [ self sessions add: aSession ]