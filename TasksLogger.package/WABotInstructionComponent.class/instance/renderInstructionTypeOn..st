rendering
renderInstructionTypeOn: html
	"Displays the icon and title according to the instruccion class (navigation, click, send key, script)"
	
	html tbsFormGroup: [ 
		html label with: 'Type'.
		html paragraph with: [ 
			html render: 
				(BotInstructionGlyphIcon on: self instruction).
				html space.
				html text: self instruction title ]
	].			