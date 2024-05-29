rendering-bots
renderBot: anExperimentBot on: html
	"Displays the main data of the given bot, as well as the individual actions that can be performed on the bot, in a HTML table row"
	
	html tableRow: [
		html
			tableData: [ 
				html anchor
					callback: [ self editBot: anExperimentBot ];
					with: anExperimentBot name ];
			tableData: anExperimentBot protocol name;
			tableData: [ self renderActionsForBot: anExperimentBot on: html]		
		]