initialize
attemptToInitializeFromFile
	monitor
		critical: [ lastSampleId := nil.
			lastTaskId := nil.
			'experiments.fuel' asFileReference exists
				ifTrue: [ experiments := FLMaterializer materializeFromFileNamed: 'experiments.fuel' ]
				ifFalse: [ experiments := OrderedCollection new ] ]