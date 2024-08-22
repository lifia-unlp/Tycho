printing
printNumberOfCompletedTasks
	"Returns the number of completed tasks over the total number of tasks assigned to the participant"
	
	^ self completedTasksNumber printString , '/' , self taskResults size printString		