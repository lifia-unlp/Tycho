instance creation
task: anExperimentTask
	"Creates a bot task that signal a sempahore to indicate that some condition becomes true.
	The associated semaphore is obtained from the given protocol task, whose prototype corresponds to a semaphore signal"
			
	^ (super task: anExperimentTask) semaphoreId: (anExperimentTask extractSemaphoreIds first)