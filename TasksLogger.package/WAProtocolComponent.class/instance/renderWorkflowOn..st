rendering-workflow
renderWorkflowOn: html
	| headerBlock tableBlock |
	html heading
		level: 3;
		with: 'Sequence of tasks'.
	headerBlock := [ html tableHeading: 'Type'.
	html tableHeading: 'Notes'.
	html tableHeading: 'Actions' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ protocol tasks do: [ :each | self renderTask: each on: html ] ] ].
	html tbsTable: tableBlock