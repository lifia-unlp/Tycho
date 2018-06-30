retrieving
sampleId: id
	| samples |
	samples := ExperimentSample selectAll.
	^ samples detect: [ :each | each id = id ] ifNone: [ nil ]