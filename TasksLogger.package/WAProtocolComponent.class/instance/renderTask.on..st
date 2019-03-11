rendering-workflow
renderTask: aTask on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self showDetailsOfTask: aTask ];
						with: aTask name ];
				tableData: aTask notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfTask: aTask ];
						with: [ html tbsGlyphIcon iconPencil title: 'Edit' ].
					html space.
					html anchor
						callback: [ self moveTaskBackward: aTask ];
						with: [ html tbsGlyphIcon iconArrowUp title: 'Move up' ].
					html space.
					html anchor
						callback: [ self moveTaskForward: aTask ];
						with: [ html tbsGlyphIcon iconArrowDown title: 'Move down' ].
					html space.
					html anchor
						callback: [ self removeTask: aTask ];
						with: [ html tbsGlyphIcon iconTrash title: 'Remove this task from the sequence' ] ] ]