counting
completedTasksNumber
	"Returns the number of completed tasks of an experiment participant"
			
	^ (self taskResults select: [ :taskResult | taskResult isCompleted ]) size