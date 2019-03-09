rendering-sessions
renderSessionOn: html
	| headerBlock tableBlock |
	html heading: 'Your sessions'.
	headerBlock := [ html
		tableHeading: 'Name';
		tableHeading: 'Notes';
		tableHeading: '';
		tableHeading: '';
		tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self store sessions do: [ :workspace | self renderSession: workspace on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewSession ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self shouldBeImplemented ];
				with: 'Import (fuel)' ]