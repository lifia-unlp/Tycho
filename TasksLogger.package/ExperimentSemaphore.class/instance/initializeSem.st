initialization
initializeSem
	"Intializes the underlying Pharo semaphore that is used to delay bots participants."
	"Signals the underlying Pharo semaphore when the current status of the experiment semaphore is not stopped."
	
	sem:= Semaphore new.
	(self isStopped)
		ifFalse: [ sem signal ]
			
	