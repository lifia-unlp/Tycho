rendering-workflow
renderTask: each on: html
	html
		tableRow: [ html
				tableData: each name;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfTask: each ];
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self moveUpTask: each ];
						with: 'Up' ];
				tableData: [ html anchor
						callback: [ self moveDownTask: each ];
						with: 'Down' ];
				tableData: [ html anchor
						callback: [ self removeTask: each ];
						with: 'Remove' ] ]