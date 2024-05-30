protocol
resetProtocol
	"Reset the current protocol of the bot, removing the current bot tasks."
			
	self tasks removeAll.
	self protocol: nil.