rendering-workflow
renderWorkflowOn: html
	| headerBlock tableBlock |
	html heading
		level: 2;
		with: 'Sequence of tasks'.
	headerBlock := [ html tableHeading: '#'.
	html tableHeading: 'Notes'.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: ''.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ experimentDesign tasks do: [ :each | self renderTask: each on: html ] ] ].
	html tbsTable: tableBlock