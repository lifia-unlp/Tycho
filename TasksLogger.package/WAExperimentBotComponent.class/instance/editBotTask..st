callbacks
editBotTask: aBotTask
	"Call the view to configure the given bot task.
	The invoked view can vary for the different kinds of bot tasks."
			
	(aBotTask class = BotMockTask) ifTrue: [ self call: (WABotMockTaskComponent on: aBotTask) ].
	"(aBotTask class = BotProgrammableTask ) ifTrue: [ self call: (WABotProgrammableTaskComponent on: aBotTask) ]."