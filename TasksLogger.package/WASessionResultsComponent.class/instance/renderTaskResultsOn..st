rendering
renderTaskResultsOn: html
	| headerBlock tableBlock |
	headerBlock := [ html
		tableHeading: 'Sample ID';
		tableHeading: 'Task name';
		tableHeading: 'Start';
		tableHeading: 'Duration';
		tableHeading: 'Properties';
		tableHeading: 'Kobold events' ].
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