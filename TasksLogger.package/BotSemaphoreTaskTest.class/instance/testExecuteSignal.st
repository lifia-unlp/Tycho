testing
testExecuteSignal
			
	| botTask |
	botTask:= SemaphoreSignalingTask task: signalTask.
	
	"Simulates another participants executing in their own threads"
	[ semaphore wait ] fork.
	[ semaphore wait ] fork.
	Processor yield.
	
	self assert: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 2. "The participants who executed the waiting task are delayed at the semaphore."
	
	"The bot participant signals the semaphore that is blocking the other participants"
	botTask executeBy: botParticipant.	
	
	self deny: (semaphore isStopped).
	self assert: (semaphore sem size) equals: 0. "After the signal, no participants is delayed at the semaphore."
