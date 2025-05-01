request handlers
semaphore: semaphoreId for: sessionId
	"Returns the semaphore with the given ID for the specified session"
	| session semaphore |
	
	monitor
		critical: [
			session:= self store sessionId: sessionId.
			session ifNil: [ ^ nil ].
			semaphore:= session semaphoreWithId: semaphoreId.
			semaphore ifNil: [ ^ nil ].
			^ RestResponseWriter new semaphoreAsJson: semaphore.						
	]		