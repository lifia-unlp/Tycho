rendering
renderSummaryJoinsProtocols: protocol on: html
	html
		tableRow: [ html tableData: protocol name.
			html tableData: protocol cantJoins.
			html tableData with: ((protocol ratioOfJoins: session) asNumber asFloat truncateTo: 0.01) asString , '%' ]