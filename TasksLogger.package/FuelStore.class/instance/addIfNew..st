private
addIfNew: anExperiment
	(self protocols includes: anExperiment)
		ifFalse: [ self protocols add: anExperiment ]