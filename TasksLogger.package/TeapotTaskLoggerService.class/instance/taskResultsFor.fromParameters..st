voyage-access
taskResultsFor: aTestTask fromParameters: parameters
	| time  |
	time := (parameters at: #milliseconds) = 'NaN'
		ifTrue: [ 0 ]
		ifFalse: [ (parameters at: #milliseconds) asNumber ].
	^ TaskResult task: aTestTask milliseconds: time successful: (parameters at: #successful) 
	