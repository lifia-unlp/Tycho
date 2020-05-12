rendering-sessions
renderSessionsOn: html
	| headerBlock tableBlock |
	html heading: 'Experiments'.
	headerBlock := [ html
		tableHeading: 'Name';
		tableHeading: 'Experiment ID';
		tableHeading: 'Notes';
		tableHeading: 'Actions' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ self session account sessions do: [ :workspace | self renderSession: workspace on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewSession ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self shouldBeImplemented ];
				with: 'Import (fuel)' ]