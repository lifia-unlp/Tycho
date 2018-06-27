prototypes
prototypes
	"So far prototypes are those with ids 1 to 3 in voyage"

	^ (ExperimentTask selectMany: [ :each | each isPrototype = true]) ifEmpty: [ self preparePrototypes ]