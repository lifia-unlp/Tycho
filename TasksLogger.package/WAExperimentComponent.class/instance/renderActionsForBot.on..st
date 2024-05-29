rendering-bots
renderActionsForBot: anExperimentBot on: html
	"Displays the individual actions that can be performed on the given bot (edit, delete, ...)"
	
	html anchor
		callback: [ self editBot: anExperimentBot ];
		with: [ html tbsGlyphIcon iconPencil title: 'Edit this bot' ].
	html space.
	html anchor
		callback: [ self deleteBot: anExperimentBot ];
		with: [ html tbsGlyphIcon iconTrash title: 'Delete this bot' ].	