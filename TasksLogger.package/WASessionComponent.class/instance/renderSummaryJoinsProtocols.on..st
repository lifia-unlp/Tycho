rendering-summary-results
renderSummaryJoinsProtocols: protocol on: html
	html
		tableRow: [ html tableData: protocol name.
			html tableData: protocol cantJoins.
			html tableData with: (self renderFloatToPercentage: (protocol ratioOfJoins: self experimentSession)) ]