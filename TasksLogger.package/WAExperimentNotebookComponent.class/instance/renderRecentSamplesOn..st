rendering-samples
renderRecentSamplesOn: html
	| headerBlock tableBlock |
	html heading: 'Recent activity'.
	headerBlock := [ html tableHeading: 'Workspace ID'.
	html tableHeading: 'Protocol ID'.
	html tableHeading: 'Tasks completed'.
	html tableHeading: 'Last activity' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ self store protocols do: [ :experiment | experiment samples do: [ :sample | self renderSample: sample inExperiment: experiment on: html ] ] ] ].
	html tbsTable: tableBlock