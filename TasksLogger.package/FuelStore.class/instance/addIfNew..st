private
addIfNew: anExperiment
	(self experiments includes: anExperiment)
		ifFalse: [ self experiments add: anExperiment ]