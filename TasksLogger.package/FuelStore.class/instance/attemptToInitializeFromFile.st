initialize
attemptToInitializeFromFile
	monitor
		critical: [ lastSampleId := nil.
			lastTaskId := nil.
			'experiments.fuel' asFileReference exists
				ifTrue: [ protocols := FLMaterializer materializeFromFileNamed: 'experiments.fuel' ]
				ifFalse: [ protocols := OrderedCollection new ] ]