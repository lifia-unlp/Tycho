voyage-access
sampleForExperiment: design fromParameters: parameters
	| samples theId sample |
	samples := ExperimentSample selectAll.
	theId := parameters at: #sampleId.
	sample := samples detect: [ :each | each id = theId ] ifNone: [ nil ].
	sample
		ifNil: [ sample := ExperimentSample id: theId design: design.
			sample save ].
	^ sample