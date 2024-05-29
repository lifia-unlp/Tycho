callbacks
createBot
	"Creates a new bot with default data and then call the view to configure it"
	
	| bot |	
	bot:= ExperimentBot name: 'Unamed bot' notes: ''.
	self 
		call: (WAExperimentBotComponent on: bot with: self experiment protocols)
		onAnswer: [ :answer | answer ifNotNil: [ 
			self experiment addBot: bot.
			self store save: self experiment ]
		] 