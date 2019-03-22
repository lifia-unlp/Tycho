rendering-workflow
renderTask: aTask on: html
	html tableRow
		passenger: aTask;
		with: [ html
				tableData: [ html span
						class: #sortHandler;
						with: [ html tbsGlyphIcon iconAlignJustify ] ];
				tableData: [ html anchor
						callback: [ self showDetailsOfTask: aTask ];
						with: aTask name ];
				tableData: aTask notes;
				tableData: [ html anchor
						callback: [ self removeTask: aTask ];
						with: [ html tbsGlyphIcon iconTrash title: 'Remove this task from the sequence' ] ] ]