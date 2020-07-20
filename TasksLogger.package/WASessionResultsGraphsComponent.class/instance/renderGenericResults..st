rendering
renderGenericResults: html
	html
		tbsRow: [ html tbsColumn: [ html tbsPageHeader with: [ html heading level3 with: 'Generic results' ] ].
			html tbsColumn: [ html heading level4 with: 'Ratio of executions'. self ratioOfJoinsByProtocol: html ] mediumSize: 6.
			html tbsColumn: [ html heading level4 with: 'Average time ellapsed in execution'. self averageTimeEllapsedByProtocol: html ] mediumSize: 6 ]