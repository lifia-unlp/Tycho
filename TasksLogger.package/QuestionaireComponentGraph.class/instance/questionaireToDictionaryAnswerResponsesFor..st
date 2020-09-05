private - accessing
questionaireToDictionaryAnswerResponsesFor: tasksResults
	| answerResponses responses response |
	answerResponses := Dictionary new.
	tasksResults
		do: [ :task | 
			(task atProperty: 'responses')
				do: [ :r | 
					responses := answerResponses at: (r at: 'q') ifAbsent: [ answerResponses at: (r at: 'q') put: OrderedCollection new ].
					response := (r at: 'a') trimBoth.
					responses add: response trimBoth ] ].
	^ answerResponses