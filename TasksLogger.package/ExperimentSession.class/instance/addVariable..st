globals
addVariable: anExperimentVariable
	(self variables anySatisfy: [ :variable | variable id = anExperimentVariable id ])
		ifFalse: [ self variables add: anExperimentVariable ]