rendering-sessions
renderSession: aSession on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						with: aSession name.
					self badgeAbTesting: aSession on: html];
				tableData: [ aSession abTesting ifTrue:[html text: aSession id ] ];
				tableData:
					(aSession notes size < 100
						ifTrue: [ aSession notes ]
						ifFalse: [ (aSession notes copyFrom: 1 to: 100) , ' ...' ]);
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						with: [ html tbsGlyphIcon iconEyeOpen title: 'Browse details and configuration' ].
					html space.
					html anchor
						callback: [ self viewSessionResults: aSession ];
						with: [ html tbsGlyphIcon iconStatistics title: 'View results of executions' ].
					html space.
					html anchor
						callback: [ self exportAsFuel: aSession ];
						with: [ html tbsGlyphIcon iconSave title: 'Save to file' ] ] ]