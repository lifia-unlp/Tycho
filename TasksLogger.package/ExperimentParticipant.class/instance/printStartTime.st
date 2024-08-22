printing
printStartTime
	"Returns the start date and time of a session participant in the following format: dd/mm/yyyy @ hh:ii:ss"
	
	^ (startTime) 
		ifNil: [ 'N/A' ] 
		ifNotNil: [ startTime asDate ddmmyyyy . ' @ ' . startTime asTime print24 ]	