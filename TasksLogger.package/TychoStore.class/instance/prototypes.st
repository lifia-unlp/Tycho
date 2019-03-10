collections
prototypes
	^ prototypes ifNil: [ prototypes := self preparePrototypes ]