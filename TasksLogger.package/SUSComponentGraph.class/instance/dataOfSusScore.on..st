private - access
dataOfSusScore: tasksResults on: chart
	| scores scoreSelected data |
	data := OrderedCollection new.
	scores := self calculateScoresFor: tasksResults.
	self susScoresRange
		keysAndValuesDo: [ :key :value | 
			scoreSelected := scores select: [ :score | score between: (value at: 1) and: (value at: 2) ].
			data add: (self
				addSusScoreName: key
				withData: scoreSelected
				withColor: (value at: 3)
				to: chart) ].
	^ data.		