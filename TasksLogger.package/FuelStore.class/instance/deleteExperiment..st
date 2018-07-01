retrieving
deleteExperiment: exp
	^ self experiments remove: exp ifAbsent: [ nil ]