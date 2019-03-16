rendering
renderTaskResultsIn: aSample on: html
	| headerBlock tableBlock |
	headerBlock := [ html tableHeading: 'Task name'.
	html tableHeading: 'Start'.
	html tableHeading: 'Duration'.
	html tableHeading: 'Properties'.
	html tableHeading: 'Kobold events' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ aSample taskResults do: [ :each | self renderResult: each fromSample: aSample on: html ] ] ].
	html tbsTable: tableBlock