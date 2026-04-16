performing
start
	"Starts the intervention of the participant in the session"
			
	self startTime: DateAndTime now.
	self status: 'running'.
	"Mark the first task as running"
	self taskResults first start.