protocol
bindProtocol: anExperimentProtocol
	"Assing the given protocol to the bot, generating for each of the protocol task a new task executable by the bot."
			
	self protocol: anExperimentProtocol.
	anExperimentProtocol tasks do: [ :task | 
		self tasks add: (task createBotTask)			
	]