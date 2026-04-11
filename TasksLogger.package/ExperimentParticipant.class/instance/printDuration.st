printing
printDuration
	"Returns the session participant duration as a time interval expressed in minutes and seconds"
	
	^ (self duration) 
		ifNil: [ 'N/A' ] 
		ifNotNil: [ 
			| minutes seconds |
			minutes:= duration // 60.
			seconds:= duration \\ 60.
			minutes printString , 'm ' , seconds printString , 's' ]	