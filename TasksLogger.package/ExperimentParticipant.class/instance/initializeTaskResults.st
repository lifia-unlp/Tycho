initialization
initializeTaskResults
	"Initialize the results of the protocol tasks"
			
	taskResults:= self protocol tasks collect: [ :task | ExperimentTaskResult task: task ].