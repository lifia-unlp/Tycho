rendering
renderInstructionPrototype: aBotInstruction on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self addInstruction: aBotInstruction ];
						with: [ html tbsGlyphIcon iconArrowUp.
							html
								space;
								text: 'Add' ];
						title: 'Use in sequence' ];
				tableData: [ html render: (BotInstructionGlyphIcon on: aBotInstruction).
					html space.
					html text: aBotInstruction title ];
				tableData: aBotInstruction description ]