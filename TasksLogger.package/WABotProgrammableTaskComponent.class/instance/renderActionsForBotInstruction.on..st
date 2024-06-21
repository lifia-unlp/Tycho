rendering
renderActionsForBotInstruction: aBotInstruction on: html
	html div
		class: #actions;
		with: [ html anchor
				callback: [ self editInstruction: aBotInstruction ];
				with: [ html tbsGlyphIcon iconEdit.
					html
						space;
						text: 'Edit' ].
			html
				space;
				space.
			html anchor
				callback: [ self removeInstruction: aBotInstruction ];
				with: [ html tbsGlyphIcon iconTrash title: 'Remove this instruction from the sequence'.
					html
						space;
						text: 'Remove' ] ]