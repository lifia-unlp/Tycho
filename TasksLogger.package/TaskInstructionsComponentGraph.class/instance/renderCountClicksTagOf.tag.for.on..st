private -rendering - tags
renderCountClicksTagOf: aTask tag: captureEventTag for: tasksResults on: html
	
	html tbsRow: [ html break.
	html tbsColumn: [ html div style:'text-align:center'; with:[html heading level2 with: 'Count Clicks'] ] mediumSize:12.
		html
				tbsColumn: [  html tbsAlert
						beWarning; with: [ html text: 'The data shown below is that of the runs that captured clicks on tag interaction.' ] ]
				mediumSize: 12.
	html tbsColumn: [ self prepareRatioOfClicksTagOf: tasksResults tag: captureEventTag on: html ] mediumSize: 6.
	html tbsColumn: [ self renderClicksTagOf: tasksResults tag: captureEventTag on: html ] mediumSize: 6.
	]
