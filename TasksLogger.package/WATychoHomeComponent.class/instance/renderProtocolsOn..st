rendering-protocols
renderProtocolsOn: html
	| headerBlock tableBlock |
	html heading: 'Your protocols (templates)'.
	headerBlock := [ html tableHeading: 'Name'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self store templateProtocols do: [ :each | self renderProtocol: each on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewProtocol ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self addExample ];
				with: 'Add examples'.
			html space.
			html tbsButton
				callback: [ self importExperiment];
				with: 'Import (fuel)' ]