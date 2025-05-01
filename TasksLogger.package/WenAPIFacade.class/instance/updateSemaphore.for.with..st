request handlers
updateSemaphore: semaphoreId for: sessionId with: jsonRepresentationOfAnExistingSemaphore
	"Updates the value of the semaphore with the given ID with the value sent in the JSON representation of the semaphore"	
	| session semaphore payload |
	monitor
		critical: [ 			
			session := self store sessionId: sessionId.
			session ifNil: [ ^ nil ].
			semaphore  := session semaphoreWithId: semaphoreId.
			semaphore ifNil: [ ^ nil ].
			"Semaphore exists"
			payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingSemaphore.			
			((payload at: 'status') isZero)
				ifTrue: [ semaphore signal ] 
				ifFalse: [ semaphore stop ].
			self store save: session.
			^ RestResponseWriter new semaphoreAsJson: semaphore
		]