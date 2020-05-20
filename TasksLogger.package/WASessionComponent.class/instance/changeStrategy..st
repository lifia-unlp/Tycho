callbacks
changeStrategy: strategy
	self experimentSession strategyProtocols: strategy.
	^ self store save: self experimentSession