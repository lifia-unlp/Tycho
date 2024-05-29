callbacks
deleteBot: anExperimentBot
	"Remove the specified bot from the experiment"

	self experiment removeBot: anExperimentBot.
	self store save: self experiment