rendering
renderGenericResults: html
	html
		tbsRow: [
			html tbsColumn: [ self renderRatioOfJoinsByProtocol: html ] mediumSize: 6.
			html tbsColumn: [ self averageTimeElapsedByProtocol: html ] mediumSize: 6 ]