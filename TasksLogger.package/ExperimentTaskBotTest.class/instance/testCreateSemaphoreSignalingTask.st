testing
testCreateSemaphoreSignalingTask
	"Tests the creation of a bot task that signal a semaphore, from a protocol task.
	Then checks if the semaphore ID corresponds to the semaphore referenced in the protocol task."
			
	| protocolTask semaphoreSignalingTask |
	protocolTask:= (ExperimentTask semaphoreSignalPrototype) cloneWithNewId: 1.
	semaphoreSignalingTask:= SemaphoreSignalingTask task: protocolTask.
	
	self assert: (semaphoreSignalingTask semaphoreId) equals: (protocolTask atProperty: 'semaphoreId').