rendering
renderContentOn: html
	html
		tbsTable: [ html
				tableHead: [ html tableHeading: 'Name'.
					html tableHeading: 'Value' ].
			html
				tableBody: [ globals
						do: [ :aVariableOrSemaphore | 
							html
								tableRow: [ html
										tableData: [ html text: aVariableOrSemaphore id ];
										tableData: [ self renderGlobal: aVariableOrSemaphore on: html ] ] ] ] ]