testing
testStopSemaphore
	"Check the method that modifies the state of the semaphore blocking participants who try to pass through it."
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 0.
	semaphore stop.

	self assert: (semaphore isStopped).