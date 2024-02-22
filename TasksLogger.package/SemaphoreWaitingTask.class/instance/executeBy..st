executing
executeBy: anExperimentParticipant
	"Executes a protocol task that waits on a semaphore until some condition is true"
			
	| sem |
	sem:= anExperimentParticipant session semaphoreWithId: self semaphoreId.
	"sem wait."