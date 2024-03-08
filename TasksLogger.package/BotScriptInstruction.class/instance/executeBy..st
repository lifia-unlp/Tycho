performing
executeBy: anExperimentBotParticipant
	"Delegates to the bot's browser driver the responsibility of executing the configured javascript code within the current web page"
			
	anExperimentBotParticipant driver executeScript: self code.