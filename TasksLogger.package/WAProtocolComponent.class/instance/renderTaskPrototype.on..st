rendering-tasks-prototypes
renderTaskPrototype: each on: html
	html
		tableRow: [ html
				tableData: each name;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self addTaskToProtocol: each ];
						with: [ html tbsGlyphIcon iconCheck title: 'Use in sequence' ] ] ]