performing
execute
	"Executes the protocol assigned to a participant bot in a new thread"
			
	[  
		self initializeDriver.
		self start.
		self bot executeBy: self.
		self complete.
		self destroyDriver 
	] fork