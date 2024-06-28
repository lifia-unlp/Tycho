callbacks
cancel
	"Cancel the changes applied to the bot instruction under configuration.
	Restore the bot instruction to its original state."
	
	self instruction copyFrom: originalInstruction.
	self answer: nil.