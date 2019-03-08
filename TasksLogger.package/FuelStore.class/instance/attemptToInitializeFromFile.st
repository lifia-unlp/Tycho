initialize
attemptToInitializeFromFile
	| data |
	monitor
		critical: [ lastSampleId := nil.
			lastTaskId := nil.
			'tycho.fuel' asFileReference exists
				ifTrue: [ data := FLMaterializer materializeFromFileNamed: 'tycho.fuel'.
					templateProtocols := data first.
					sessions := data second ]
				ifFalse: [ templateProtocols := OrderedCollection new ] ]