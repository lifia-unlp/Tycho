workflow
start
	"Records the moment in which a participant starts the task and changes its status to running"
			
	self startTime: DateAndTime now.
	self status: 'running'.