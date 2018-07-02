accessing
prototypes
	^ prototypes ifNil: [ prototypes := self preparePrototypes ]