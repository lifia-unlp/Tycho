performing
complete
	"Marks the session as completed once all its participants have finished their protocols"
			
	| now |
	now := DateAndTime now.
	self duration: (now - self startTime) asSeconds.
	self status: 'completed'.