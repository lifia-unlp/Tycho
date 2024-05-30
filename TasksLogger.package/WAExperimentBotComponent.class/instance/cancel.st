callbacks
cancel
	"Cancel the changes applied to the bot under configuration.
	Restore the bot to its original state."
	
	self bot copyFrom: originalBot.
	self answer: nil.
	