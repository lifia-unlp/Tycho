rendering
renderBotInstruction: aBotInstruction on: html
	html listItem
		passenger: aBotInstruction;
		with: [ html tbsPanel beDefault
				with: [ html
						tbsPanelHeading: [ html render: (BotInstructionGlyphIcon on: aBotInstruction).
							html space.
							html text: aBotInstruction title ].
					html
						tbsPanelBody: [ 
							self renderBotInstruction: aBotInstruction propertiesOn: html.
							self renderActionsForBotInstruction: aBotInstruction on: html ] ] ]