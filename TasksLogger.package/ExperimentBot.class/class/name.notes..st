instance creation
name: aName notes: someNotes
	"Create an experiment bot with the given name and description, but without a protocol.
	Since it does not have a protocol assigned yet, the bot is not ready to be executed in a session."
			
	^ (self new) name: aName; notes: someNotes.