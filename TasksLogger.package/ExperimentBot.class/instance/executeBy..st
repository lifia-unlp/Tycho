executing
executeBy: anExperimentParticipant
	"The given participant executes the bot's tasks to carry out the assigned protocol"
			
	self tasks do: [ :botTask | self executeTask: botTask by: anExperimentParticipant ]