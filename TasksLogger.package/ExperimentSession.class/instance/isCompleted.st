testing
isCompleted
	"Checks if all session participant have completed their protocols"
			
	^ self participants allSatisfy: [ :participant | participant isCompleted ]