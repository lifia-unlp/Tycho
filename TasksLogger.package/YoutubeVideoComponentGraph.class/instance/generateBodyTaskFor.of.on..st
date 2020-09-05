global
generateBodyTaskFor: aTask of: aProtocol on: html
	| tasksResults |
	tasksResults := self store taskResultsForTask: aTask of: aProtocol.
	self renderElapsedMs: tasksResults on: html.