rendering
generateBodyTaskFor: aTask of: aProtocol on: html
	| tasksResults |
	tasksResults := self store taskResultsForTask: aTask of: aProtocol.
	html
		tbsRow: [ html tbsColumn: [ self renderSusScore: tasksResults on: html. 
				self renderSusAnswers: tasksResults on: html ] mediumSize: 8.
			html tbsColumn: [ self renderElapsedMs: tasksResults on: html ] mediumSize: 4 ]