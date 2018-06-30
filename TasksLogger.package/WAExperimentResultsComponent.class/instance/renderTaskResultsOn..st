rendering
renderTaskResultsOn: html
	| samples headerBlock tableBlock |
	html heading
		level: 2;
		with: 'Results of taks'.
	samples := ExperimentSample selectAll select: [ :each | each experiment id = experimentDesign id ].
	headerBlock := [ 
	html tableHeading: 'Sample'.
	html tableHeading: 'Task'.
	html tableHeading: 'Data'.
	html tableHeading: 'Tracking'  ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ samples do: [ :sample | sample taskResults do: [ :each | self renderResult: each fromSample: sample on: html ] ] ] ].
	html tbsTable: tableBlock