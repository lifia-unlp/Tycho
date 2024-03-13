actions
signal
	"Enables participants to progress in their execution: The barrier is up."
	"Sets the receiver status to not stopped, and signals the underlying Pharo semaphore for each bot blocked on it."
	
	| delayedBots |
	delayedBots := sem size.				
	self go.
	delayedBots timesRepeat: [ sem signal ]