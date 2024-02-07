instance creation
task: anExperimentTask
	"Creates a bot task that wait on a sempahore until some condition becomes true.
	The associated semaphore is obtained from the given protocol task, whose prototype corresponds to a waiting task at a semaphore"
			
	^ (super task: anExperimentTask) semaphoreId: (anExperimentTask extractSemaphoreIds first)