testing
testWaitOnSemaphoreWithNonBlockingStatus
	"Checks that the semaphore status is not change and that there are no participants blocked at the semaphore"
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 0.
	semaphore wait.
	
	self deny: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 0.