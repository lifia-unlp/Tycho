callbacks
changeStrategy: strategy
	self experimentSession strategyProtocols: strategy.
	^ self store rememberToSave: self experimentSession.