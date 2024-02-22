executing
executeTask: anExperimentBotTask by: anExperimentParticipant
	"The given participant executes the specified bot task"
			
	| taskResult |
	
	taskResult:= anExperimentParticipant getTaskResult: (anExperimentBotTask task).
	taskResult start.
	anExperimentBotTask executeBy: anExperimentParticipant.
	taskResult complete.
