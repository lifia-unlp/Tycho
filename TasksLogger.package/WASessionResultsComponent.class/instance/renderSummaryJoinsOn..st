rendering
renderSummaryJoinsOn: html
	html heading level4 with: 'Summary of joins executions'.
	session protocols
		ifNotEmpty: [ :protocols | 
			html
				tbsTable: [ html
						tableHead: [ html
								tableHeading: 'Protocol name';
								tableHeading: 'Cant Joins';
								tableHeading: 'Ratio joins' ].
					html tableBody: [ protocols do: [ :protocol | self renderSummaryJoinsProtocols: protocol on: html ] ] ] ]