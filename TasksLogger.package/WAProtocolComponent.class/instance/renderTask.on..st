rendering-workflow
renderTask: each on: html
	html
		tableRow: [ html
				tableData: each name;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfTask: each ];
						with: [ html tbsGlyphIcon iconPencil title: 'Edit' ].
					html space.
					html anchor
						callback: [ self moveTaskBackward: each ];
						with: [ html tbsGlyphIcon iconArrowUp title: 'Move up' ].
					html space.
					html anchor
						callback: [ self moveTaskForward: each ];
						with: [ html tbsGlyphIcon iconArrowDown title: 'Move down' ].
					html space.
					html anchor
						callback: [ self removeTask: each ];
						with: [ html tbsGlyphIcon iconTrash title: 'Remove this task from the sequence' ] ] ]