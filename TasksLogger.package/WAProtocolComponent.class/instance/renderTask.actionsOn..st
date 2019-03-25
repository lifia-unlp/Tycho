rendering-tasks
renderTask: aTask actionsOn: html
	html div
		class: #actions;
		with: [ html anchor
				callback: [ self showDetailsOfTask: aTask ];
				with: [ html tbsGlyphIcon iconEdit.
					html
						space;
						text: 'Edit' ].
			html
				space;
				space.
			html anchor
				callback: [ self removeTask: aTask ];
				with: [ html tbsGlyphIcon iconTrash title: 'Remove this task from the sequence'.
					html
						space;
						text: 'Remove' ] ]