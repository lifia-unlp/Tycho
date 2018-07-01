saving
deleteExperiment: exp
	monitor critical: [ self experiments remove: exp ifAbsent: [ nil ] ]