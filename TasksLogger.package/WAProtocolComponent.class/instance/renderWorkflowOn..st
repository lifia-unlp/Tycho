rendering-workflow
renderWorkflowOn: html
	| headerBlock tableBlock |
	html heading
		level: 3;
		with: 'Sequence of tasks'.
	headerBlock := [ html
		tableHeading: 'Sort';
		tableHeading: 'Type';
		tableHeading: 'Notes';
		tableHeading: 'Actions' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody
		id: #tasksList;
		script:
			(html jQuery new sortable
				onStop: (html jQuery ajax callback: [ :ordered | self saveOrder: ordered ] passengers: (html jQuery this find: 'tr')));
		with: [ protocol tasks do: [ :each | self renderTask: each on: html ] ] ].
	html tbsTable: tableBlock