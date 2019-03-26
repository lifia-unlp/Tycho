rendering
renderContentOn: html
	html
		tbsTable: [ html
				tableHead: [ html tableHeading: 'Name'.
					html tableHeading: 'Status' ].
			html
				tableBody: [ semaphores
						do: [ :semaphore | 
							html
								tableRow: [ html
										tableData: [ html text: semaphore id ];
										tableData: [ self renderSemaphore: semaphore on: html ] ] ] ] ]