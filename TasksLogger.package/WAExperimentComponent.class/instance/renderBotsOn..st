rendering-bots
renderBotsOn: html
	"Displays the list of bots added to the experiment, as well as the option to add a new bot to the experiment"

	html heading level: 3; with: 'Bots'.
	self experiment bots 
		ifEmpty: [ html paragraph: 'There are no bots in this experiment' ]
		ifNotEmpty: [ self renderBotListOn: html ].
	self renderBotListActionsOn: html.