rendering-bots
renderBotListActionsOn: html
	"Display the global actions applicable to the list of bots.
	At the moment, only displays the links to add a new bot."
		
	html form: [ 
		html tbsButton
			callback: [ self createBot ];
			with: 'Create bot'.
		html space.		
	]
	
