semaphores
semaphore: semaphoreId for: protocolId
	^ self sessions
		detect: [ :each | each protocols anySatisfy: [ :protocol | protocol id = protocolId ] ]
		ifFound: [ :found | found semaphoreWithId: semaphoreId ]
		ifNone: [ nil ]