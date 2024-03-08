performing
executeBy: anExperimentBotParticipant
	"Delegates to the bot's browser driver the responsibility of enter a text on the configured element within the current web page"
			
	anExperimentBotParticipant driver sendKeys: self text on: self selector 