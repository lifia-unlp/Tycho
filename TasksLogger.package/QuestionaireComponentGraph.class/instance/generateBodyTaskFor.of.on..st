initialization
generateBodyTaskFor: aTask of: aProtocol on: html
	| tasksResults |
	tasksResults := self store taskResultsForTask: aTask of: aProtocol.
	html
		tbsRow: [ html tbsColumn: [ self renderResponsesOf: tasksResults on: html ] mediumSize: 8.
			html tbsColumn: [ self renderElapsedMs: tasksResults on: html ] mediumSize: 4 ]