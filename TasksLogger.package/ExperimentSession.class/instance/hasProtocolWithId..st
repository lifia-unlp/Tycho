accessing
hasProtocolWithId: anId
	^ protocols anySatisfy: [ :each | each id = anId ]