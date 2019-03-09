rendering
renderContentOn: html
	html
		tbsTable: [ html
				tableHead: [ html tableHeading: 'Name'.
					html tableHeading: 'Status' ].
			html
				tableBody: [ semaphores
						do: [ :each | 
							html
								tableRow: [ html
										tableData: [ html text: each id ];
										tableData: [ self render: each on: html ] ] ] ] ]