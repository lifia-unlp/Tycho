rendering-tasks-prototypes
renderTaskPrototype: aPrototype on: html
	html
		tableRow: [ html
				tableData: aPrototype name;
				tableData: aPrototype notes;
				tableData: [ html anchor
						callback: [ self addTaskToProtocol: aPrototype ];
						with: [ html tbsGlyphIcon iconPlus.
							html
								space;
								text: 'Add' ];
						title: 'Use in sequence' ] ]