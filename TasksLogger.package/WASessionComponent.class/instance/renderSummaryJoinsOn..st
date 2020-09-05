rendering-summary-results
renderSummaryJoinsOn: html
	html heading level3
		with: [ html text: 'Summary of joins executions '.
			self experimentSession totalJoins isZero ifFalse:[
			html anchor
				callback: [ self viewSessionResults: self experimentSession ];
				with: [ html strong with: 'View Results' ] ]].
	self experimentSession protocols
		ifNotEmpty: [ :protocols | 
			html
				tbsTable: [ html
						tableHead: [ html
								tableHeading: 'Protocol name';
								tableHeading: 'Cant Joins';
								tableHeading: 'Ratio joins' ].
					html
						tableBody: [ protocols do: [ :protocol | self renderSummaryJoinsProtocols: protocol on: html ] ] ] ]