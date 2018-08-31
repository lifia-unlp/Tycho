singleton
store
	store
		ifNil: [ store := FuelStore new.
			store attemptToInitializeFromFile ].
	^ store