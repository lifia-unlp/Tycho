rendering-sessions
renderSession: aSession on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						with: aSession name ];
				tableData:
					(aSession notes size < 100
						ifTrue: [ aSession notes ]
						ifFalse: [ (aSession notes copyFrom: 1 to: 100) , ' ...' ]);
				tableData: [ html anchor
						callback: [ self showDetailsOfSession: aSession ];
						with: [ html tbsGlyphIcon iconEyeOpen title: 'Browse details and results' ].
					html space.
					html anchor
						callback: [ self exportAsFuel: aSession ];
						with: [ html tbsGlyphIcon iconSave title: 'Save to file' ] ] ]