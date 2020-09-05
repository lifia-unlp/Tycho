rendering
generateBodyTaskFor: aTask of: aProtocol on: html
	| tasksResults |
	tasksResults := self store taskResultsForTask: aTask.
	^ html
		tbsRow: [ html tbsColumn: [ self renderGenericDataOf: tasksResults on: html ] mediumSize: 3.
			html
				tbsColumn: [ (aTask atProperty: 'captureDistance')
						ifTrue: [ html
								tbsRow: [ html tbsColumn: [ self renderSuccessfullyRateFor: tasksResults on: html ] mediumSize: 6.
									html tbsColumn: [ self renderSpeedMouse: tasksResults on: html ] mediumSize: 6 ].
							html
								tbsColumn: [ html break.
									self renderBarExecutionInactivtyFor: tasksResults on: html ] ]
						ifFalse: [ html tbsRow: [ html tbsColumn: [ self renderSuccessfullyRateFor: tasksResults on: html ] ] ] ]
				mediumSize: 9 ]