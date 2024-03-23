private
extractVariablesFrom: anExperimentProtocol
	"Extracts the IDs of the variables referenced in the tasks of the given protocol"

	| variableIds |
	variableIds := anExperimentProtocol tasks flatCollect: [ :task | task extractVariableIds ].
	variableIds do: [ :variableId | 
		self addVariable: (ExperimentVariable id: variableId session: self value: 'NA') 
	]