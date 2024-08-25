printing
printDuration
	"Returns the duration in milliseconds that a session participant required to perform the task"
	
	^ (self ellapsedMs) 
		ifNil: [ 'N/A' ] 
		ifNotNil: [ ellapsedMs printString , 'ms' ]	