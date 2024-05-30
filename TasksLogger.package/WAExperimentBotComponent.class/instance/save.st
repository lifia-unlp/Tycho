callbacks
save
	"Save the changes applied to the bot under configuration.
	Previously, validate that the bot has an assigned protocol"
	
	(self bot hasProtocol) ifFalse: [ ^ self error: 'The bot must have a protocol assigned' ].
	
	self store save: self bot.
	self answer