bot-task
createBotTask
	"Create a new bot task based on the protocol task prototype"
	
	^ (BotTasksMap at: self componentClassname) value: self.

