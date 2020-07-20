rendering-summary-results
renderSummaryJoinsOn: html
	html heading level3 with: 'Summary of joins executions'.
	html anchor
		callback: [ self viewSessionResults: self experimentSession ];
		with: 'See more details'.
	self experimentSession protocols
		ifNotEmpty: [ :protocols | 
			html
				tbsTable: [ html
						tableHead: [ html
								tableHeading: 'Protocol name';
								tableHeading: 'Cant Joins';
								tableHeading: 'Ratio joins' ].
					html tableBody: [ protocols do: [ :protocol | self renderSummaryJoinsProtocols: protocol on: html ] ] ] ]