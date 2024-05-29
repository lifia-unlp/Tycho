callbacks
editBot: anExperimentBot
	"Invokes the view to configure the experiment bot given"

	self
		call: (WAExperimentBotComponent on: anExperimentBot with: self experiment protocols)
		onAnswer: [ :answer | answer ifNotNil: [ self store save: self experiment ]]