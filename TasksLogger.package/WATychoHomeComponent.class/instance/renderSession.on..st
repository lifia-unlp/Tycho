rendering-sessions
renderSession: aSession on: html
	html
		tableRow: [ html
				tableData: aSession name;
				tableData: aSession notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						tbsPullRight;
						with: 'Edit' ];
				tableData: [ html anchor
						callback: [ self showSessionResults: aSession ];
						tbsPullRight;
						with: 'Results' ];
				tableData: [ html anchor
						callback: [ self exportAsFuel: aSession ];
						tbsPullRight;
						with: 'Export (fuel)' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: aSession ];
						tbsPullRight;
						with: 'Export (JSON)' ] ]