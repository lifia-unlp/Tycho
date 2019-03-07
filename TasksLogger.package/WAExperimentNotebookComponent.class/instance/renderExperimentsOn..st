rendering experiments
renderExperimentsOn: html
	| headerBlock tableBlock |
	html heading: 'Your test protocols'.
	headerBlock := [ html tableHeading: 'ID'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self store experiments do: [ :each | self renderExperiment: each on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewExperiment ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self addExample ];
				with: 'Add example'.
			html space.
			html tbsButton
				callback: [ self importExperiment];
				with: 'Import (fuel)' ]