protocols
sessionId: aString
	^ repository selectOne: ExperimentSession where: [ :each | each id = aString ]