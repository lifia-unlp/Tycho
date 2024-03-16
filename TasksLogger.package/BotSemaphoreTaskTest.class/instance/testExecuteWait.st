testing
testExecuteWait
			
	| botTask |
	botTask:= SemaphoreWaitingTask task: waitTask.
	[ botTask executeBy: botParticipant ] fork.
	Processor yield.
	
	self assert: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 1. "The participant who executed the waiting task is delayed at the semaphore."
	
	semaphore signal. "Simulates the signaling of the semaphore by another participant"
	
	self deny: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 0. "After the signal, no participants is delayed at the semaphore."
