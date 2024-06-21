callbacks
cancel
	"Cancel the changes applied to the programmable bot task under configuration.
	Restore the bot task to its original state."
	
	self botTask copyFrom: originalBotTask.
	self answer: nil.
	