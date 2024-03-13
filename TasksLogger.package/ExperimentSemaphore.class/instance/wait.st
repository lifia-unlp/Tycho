actions
wait
	"Blocks the participant executing this action on the underlying semaphore if the experiment semaphore is stopped (waiting condition not true)."
	"This actions is used to delay the threads representing the bots participants."
	"The humans participants are represented by external processes running the Tycho add-on. Therefore, their delay is ouside the scope of this app."
			
	(self isStopped)
		ifTrue: [ sem wait ]