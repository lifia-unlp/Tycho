private - access
dataOfSusQuestionaire: tasksResults on: chart
	| data questionResponses dataResponse |
	data := OrderedCollection new.
	questionResponses := Dictionary new.
	(Interval from: 1 to: 10) do: [ :i | questionResponses at: 'question' , i asString put: OrderedCollection new ].
	tasksResults do: [ :taskResult | (taskResult properties at: 'answers') keysAndValuesDo: [ :aKey :aValue | (questionResponses at: aKey) add: aValue ] ].
	susTypeResponses doWithIndex: [ :response :indexResponse | 
			dataResponse := OrderedCollection new.
			(Interval from: 1 to: 10) do: [ :indexInterval | 	 dataResponse add: ((questionResponses at: 'question' , indexInterval asString) occurrencesOf: indexResponse asString ) ].
			self addSusResponsesSeriesNamed: response withData: dataResponse asArray withColor: (susColorTypeResponses at:indexResponse) to: chart.
			].
	^ data
	
