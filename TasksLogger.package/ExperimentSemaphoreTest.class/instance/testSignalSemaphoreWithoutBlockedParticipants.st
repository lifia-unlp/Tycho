testing
testSignalSemaphoreWithoutBlockedParticipants
	"Checks that the semaphore status is not stopped and that there are no participants blocked at the semaphore"
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 1.
	semaphore signal.
	
	self deny: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 0.