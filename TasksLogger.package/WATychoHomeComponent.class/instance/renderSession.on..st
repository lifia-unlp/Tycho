rendering-sessions
renderSession: aSession on: html
	html
		tableRow: [ html
				tableData: aSession name;
				tableData: aSession notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						with: [ html tbsGlyphIcon iconEyeOpen title: 'Browse details and results' ].
					html space.
					html anchor
						callback: [ self exportAsFuel: aSession ];
						with: [ html tbsGlyphIcon iconSave title: 'Save to file' ].
					html space.
					html anchor
						callback: [ self exportAsJson: aSession ];
						with: [ html tbsGlyphIcon iconExport title: 'Export as JSON' ] ] ]