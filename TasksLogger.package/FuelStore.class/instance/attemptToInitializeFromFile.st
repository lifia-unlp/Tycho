initialize
attemptToInitializeFromFile
	| data |
	monitor
		critical: [ lastSampleId := nil.
			lastTaskId := nil.
			'tycho.fuel' asFileReference exists
				ifTrue: [ data := FLMaterializer materializeFromFileNamed: 'tycho.fuel'.
					templateProtocols := data first.
					sessions := data second.
					users := data third ]
				ifFalse: [ templateProtocols := OrderedCollection new.
					sessions := OrderedCollection new.
					users := OrderedCollection new ] ]