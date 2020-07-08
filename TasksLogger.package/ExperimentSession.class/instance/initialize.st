initialization
initialize
	super initialize.
	protocols := OrderedCollection new.
	semaphores := OrderedCollection new.
	variables := OrderedCollection new.
	strategyProtocols := WeightedStrategy new.
	abTesting := false.
	totalJoins := 0.