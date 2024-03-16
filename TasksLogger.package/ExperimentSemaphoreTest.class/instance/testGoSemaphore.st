testing
testGoSemaphore
	"Checks the method that modifies the state of the semaphore letting the participants to pass through it."
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 1.
	semaphore go.

	self deny: (semaphore isStopped).