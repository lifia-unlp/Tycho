globals
variableAsJson: anExperimentVariable
	| response mapper |
	response := String new writeStream.
	mapper := NeoJSONWriter on: response.
	mapper
		for: ExperimentVariable
		do: [ :mapping | 
			mapping
				mapInstVar: 'value';
				mapInstVar: 'id' ].
	mapper
		prettyPrint: true;
		nextPut: anExperimentVariable.
	^ response contents