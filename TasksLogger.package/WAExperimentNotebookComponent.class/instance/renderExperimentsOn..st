rendering experiments
renderExperimentsOn: html
	| headerBlock tableBlock |
	html heading: 'Your experiments'.
	headerBlock := [ html tableHeading: '#'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ Experiment selectAll do: [ :each | self renderExperiment: each on: html ] ] ].
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
				callback: [ self ];
				with: 'Import' ]