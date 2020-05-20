access
listOfStrategies
	| strategies |
		strategies := OrderedCollection new.
		strategies add: RandomStrategy new; add: WeightedStrategy new.
		^ strategies.