rendering-tasks-prototypes
renderTaskPrototype: aPrototype on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self addTaskToProtocol: aPrototype ];
						with: [ html tbsGlyphIcon iconArrowUp.
							html
								space;
								text: 'Add' ];
						title: 'Use in sequence' ];
				tableData: [ html render: (TaskGlyphIcon on: aPrototype).
					html space.
					html text: aPrototype name ];
				tableData: aPrototype notes ]