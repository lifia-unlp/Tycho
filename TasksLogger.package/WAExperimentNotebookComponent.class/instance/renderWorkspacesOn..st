rendering-protocols
renderWorkspacesOn: html
	| headerBlock tableBlock |
	html heading: 'Workspaces'.
	headerBlock := [ html tableHeading: 'Name'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self store workspaces do: [ :workspace | self renderWorkspace: workspace on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewWorkspace ];
				with: 'Add new'.
			html space.
			html tbsButton
				callback: [ self shouldBeImplemented ];
				with: 'Import (fuel)' ]