testing
testCreateSemaphoreWaitingTask
	"Tests the creation of a bot task that waits on a semaphore, from a protocol task.
	Then checks if the semaphore ID corresponds to the semaphore referenced in the protocol task. "
			
	| protocolTask semaphoreWaitingTask |
	protocolTask:= (ExperimentTask semaphoreWaitPrototype) cloneWithNewId: 1.
	semaphoreWaitingTask:= SemaphoreWaitingTask task: protocolTask.
	
	self assert: (semaphoreWaitingTask semaphoreId) equals: (protocolTask atProperty: 'semaphoreId').