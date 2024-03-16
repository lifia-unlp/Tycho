testing
testCreateSemaphoreStoppingParticipants
	"Checks the creation of an experiment semaphore that simulates a low barrier that stops the progress of the participants."
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 1.
	self assert: (semaphore isStopped).
	self deny: (semaphore sem isSignaled).
