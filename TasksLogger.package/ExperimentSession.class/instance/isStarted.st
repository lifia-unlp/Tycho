testing
isStarted
	"Checks if at least one session participant has started his participation"
			
	^ self participants anySatisfy: [ :participant | participant isStarted ]