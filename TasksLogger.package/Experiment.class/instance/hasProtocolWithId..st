protocols management
hasProtocolWithId: anId
	"Checks if exists in the experiment a protocol with the given id"

	^ protocols anySatisfy: [ :each | each id = anId ]