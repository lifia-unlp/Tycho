print
taskResultAsDictionary: taskResult
	| dict |
	
	dict := Dictionary new.
	dict
		at: 'startTime' put: ((taskResult startTime) ifNotNil: [ taskResult startTime asString ] ifNil: [nil]);
		at: 'ellapsedMs' put: taskResult ellapsedMs;
		at: 'status' put: taskResult status;
		at: 'properties' put: taskResult properties;
		at: 'koboldReport' put: taskResult koboldReport;
		at: 'task' put: (self taskAsDictionary: taskResult task).
	^ dict