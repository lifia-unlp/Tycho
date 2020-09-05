initialization
generateBodyTaskFor: aTask of: aProtocol on: html
	| tasksResults |
	tasksResults := self store taskResultsForTask: aTask.
	self renderElapsedMs: tasksResults on: html.