rendering-sessions
renderSession: aSession on: html
	html
		tableRow: [ html
				tableData: aSession name;
				tableData: aSession notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						tbsPullRight;
						with: 'Details and results' ];

				tableData: [ html anchor
						callback: [ self exportAsFuel: aSession ];
						tbsPullRight;
						with: 'Export (fuel)' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: aSession ];
						tbsPullRight;
						with: 'Export (JSON)' ] ]