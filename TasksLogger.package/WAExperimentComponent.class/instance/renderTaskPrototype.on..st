rendering-tasks-prototypes
renderTaskPrototype: each on: html
	html
		tableRow: [ html
				tableData: each name;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self addTaskToExperiment: each ];
						with: 'Use' ] ]