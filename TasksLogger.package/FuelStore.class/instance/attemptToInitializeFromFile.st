initialize
attemptToInitializeFromFile
	monitor
		critical: [ 'experiments.fuel' asFileReference exists
				ifTrue: [ experiments := FLMaterializer materializeFromFileNamed: 'experiments.fuel' ]
				ifFalse: [ experiments := OrderedCollection new ] ]