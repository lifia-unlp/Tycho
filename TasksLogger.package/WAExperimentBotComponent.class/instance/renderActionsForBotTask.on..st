rendering-tasks
renderActionsForBotTask: aBotTask on: html
	"Displays the actions executed by the bot to perform the associated protocol task"
	
	html render: aBotTask description.
	
	(aBotTask class = BotProgrammableTask) ifTrue: [ 
		html orderedList: [ 
			aBotTask instructions do: [ :instruction |
				html listItem: instruction description ]
		]
	 ]