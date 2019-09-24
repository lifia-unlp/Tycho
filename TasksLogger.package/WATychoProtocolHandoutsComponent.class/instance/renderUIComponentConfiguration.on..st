rendering
renderUIComponentConfiguration: each on: html
	html label: 'Component type'.
	html paragraph: each componentClassname.
	html label: 'Configuration'.
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Property';
						tableHeading: 'Value' ].
			html
				tableBody: [ each properties
						do: [ :prop | 
							html
								tableRow: [ html
										tableData: [ html text: prop name ];
										tableData: [ html text: prop value ] ] ] ] ]