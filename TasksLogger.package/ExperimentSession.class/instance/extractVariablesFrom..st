private
extractVariablesFrom: anExperimentProtocol
	| variableIds |
	variableIds := anExperimentProtocol tasks flatCollect: [ :task | task extractVariableIds ].
	variableIds do: [ :variableId | self addVariable: (ExperimentVariable id: variableId session: self value: 'NA') ]