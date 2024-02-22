executing
executeBy: anExperimentParticipant
	"Executes a protocol task that signals a semaphore of the experiment session"
			
	| sem |
	sem:= anExperimentParticipant session semaphoreWithId: self semaphoreId.
	"sem signal."