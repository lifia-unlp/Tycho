rendering-experiments
renderExperiment: anExperiment on: html
	"Display the main information of an experiment as a table row"

	html tableRow: [ 
		html
			tableData: [ 
				html anchor
					callback: [ self showDetailsOfExperiment: anExperiment ];
					with: anExperiment name ];
			tableData:
				(anExperiment notes size < 100
					ifTrue: [ anExperiment notes ]
					ifFalse: [ (anExperiment notes copyFrom: 1 to: 100) , ' ...' ]);
			tableData: [
				html anchor
					callback: [ self showDetailsOfExperiment: anExperiment ];
					with: [ html tbsGlyphIcon iconEyeOpen title: 'Browse details and results' ].
				html space.
				html anchor
					callback: [ self exportAsFuel: anExperiment ];
					with: [ html tbsGlyphIcon iconSave title: 'Save to file' ] ] 
		]