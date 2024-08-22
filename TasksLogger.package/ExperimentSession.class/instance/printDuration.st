printing
printDuration
	"Returns the session duration as a time interval expressed in minutes and seconds"
	
	^ (self duration) 
		ifNil: [ 'N/A' ] 
		ifNotNil: [ duration asMinutes truncated printString , 'm ' , duration seconds printString , 's' ]	