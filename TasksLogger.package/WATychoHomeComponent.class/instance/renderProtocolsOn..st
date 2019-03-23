rendering-protocols
renderProtocolsOn: html
	| headerBlock tableBlock |
	html heading: 'Protocol Templates'.
	headerBlock := [ html tableHeading: 'Name'.
	html tableHeading: 'Notes'.
	html tableHeading: 'Actions' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ self session account protocols do: [ :each | self renderProtocol: each on: html ] ] ].
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
				callback: [ self importExperiment ];
				with: 'Import (fuel)' ]