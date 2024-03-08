performing
complete
	"Completes the participation in the session after finishing the execution of the assigned protocol"
			
	| now |
	
	now:= DateAndTime now.
	self duration: (now - self startTime) asSeconds.
	self status: 'completed'.
	(self session isCompleted)
		ifTrue: [ self session complete ]
	
	