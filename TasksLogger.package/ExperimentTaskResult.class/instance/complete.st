workflow
complete
	"Calculate the time the task took and mark it as completed"
			
	| now |

	now:= DateAndTime now.	
		
	self ellapsedMs: (now - self startTime) asMilliSeconds.
	self status: 'completed'.