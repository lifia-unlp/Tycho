instance creation
task: anExperimentTask delay: anInteger
	"Creates a bot task that simulates the given protocol task by waiting the given delay time without doing anything"
			
	^ (self task: anExperimentTask) delay: anInteger.