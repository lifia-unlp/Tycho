protocols
sampleId: aString
	^ repository selectOne: ExperimentSample where: [ :each | each id = aString ]