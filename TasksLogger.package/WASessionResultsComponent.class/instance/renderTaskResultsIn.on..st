rendering
renderTaskResultsIn: aSample on: html
	| headerBlock tableBlock |
	html heading
		level: 2;
		with: 'Results of taks'.
	headerBlock := [ html tableHeading: 'Task'.
	html tableHeading: 'Data'.
	html tableHeading: 'Kobold events' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ aSample taskResults do: [ :each | self renderResult: each fromSample: aSample on: html ] ] ].
	html tbsTable: tableBlock