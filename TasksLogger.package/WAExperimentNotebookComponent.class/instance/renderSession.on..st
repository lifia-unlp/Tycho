rendering-sessions
renderSession: aWorkspace on: html
	html
		tableRow: [ html
				tableData: aWorkspace name;
				tableData: aWorkspace notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aWorkspace ];
						tbsPullRight;
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self shouldBeImplemented ];
						tbsPullRight;
						with: 'Results' ];
				tableData: [ html anchor
						callback: [ self exportAsFuel: aWorkspace ];
						tbsPullRight;
						with: 'Export (fuel)' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: aWorkspace ];
						tbsPullRight;
						with: 'Export (JSON)' ] ]