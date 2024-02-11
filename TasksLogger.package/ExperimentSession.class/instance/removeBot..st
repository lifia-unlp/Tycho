bots management
removeBot: anExperimentBot
	"Removes the given bot from the bots collection of the experimento session"
	"TODO: Check if it's neccesary to redefine the exception throwed by this method (ErrorNotFound)"	
			
	self bots remove: anExperimentBot.