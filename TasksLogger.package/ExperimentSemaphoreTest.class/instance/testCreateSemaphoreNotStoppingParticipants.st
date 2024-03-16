testing
testCreateSemaphoreNotStoppingParticipants
	"Checks the creation of an experiment semaphore that simulates a raised barrier that allows the progress of the participants."
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 0.
	self deny: (semaphore isStopped).
	self assert: (semaphore sem isSignaled).
	self assert: (semaphore sem size) equals: 0
