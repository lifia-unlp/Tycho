private - access
calculateScoresFor: tasksResults
	| evenSum scores questionScores oddSum answers |
	scores := OrderedCollection new.
	questionScores := Dictionary new.
	
	tasksResults
		do: [ :taskResult | 
			answers := taskResult properties at: 'answers'.
			oddSum := (Interval from: 1 to: 10 by: 2)
				sum: [ :i | (answers at: 'question' , i asString) asNumber ].
			evenSum := (Interval from: 2 to: 10 by: 2)
				sum: [ :i | (answers at: 'question' , i asString) asNumber ].
			scores add: ((oddSum - 5) + (25 - evenSum)) * 2.5 ].
	^ scores