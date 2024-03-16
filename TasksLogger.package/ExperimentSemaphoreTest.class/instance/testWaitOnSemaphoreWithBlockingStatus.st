testing
testWaitOnSemaphoreWithBlockingStatus
	"Checks that the semaphore status is sttoped and there is one more participant blocked at the semaphore"
			
	| semaphore |
	semaphore := ExperimentSemaphore id: 'testingSemaphore' session: session  status: 1.
	[ semaphore wait ] fork. "Excutes the #wait on another thread to avoid blocking the test"
	Processor yield. "Yields the processor to let the execution of the thread running the #wait"
	
	self assert: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 1.