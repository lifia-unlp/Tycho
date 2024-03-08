performing
start
	"Starts the session by setting its start time and status, and launching the bots that participates in it."
	"The session begins once a person participating in it starts the execution of his protocol."
	
	self startTime: DateAndTime now.
	self status: 'running'.
	self startBots.