rendering
renderTaskResultsOn: html
	| headerBlock tableBlock |
	headerBlock := [ html tableHeading: 'Task name'.
	html tableHeading: 'Start'.
	html tableHeading: 'Duration'.
	html tableHeading: 'Properties'.
	html tableHeading: 'Kobold events' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self filteredProtocolSampleTaskTuples
				do: [ :each | 
					self
						renderProtocol: each first
						sample: each second
						result: each third
						on: html ] ] ].
	html tbsTable: tableBlock