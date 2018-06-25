rendering designs
renderDesingsOn: html
	| headerBlock tableBlock |
	headerBlock := [ html tableHeading: '#'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ ExperimentDesign selectAll do: [ :each | self renderDesign: each on: html ] ] ].
   html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewDesign ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self addExample ];
				with: 'Add example' ]