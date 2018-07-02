rendering
receiveFile: aFile
	[ experiment := FLMaterializer materializeFromByteArray: aFile rawContents.
	experiment class == Experiment
		ifFalse: [ experiment := nil.
			error := 'Not an experiment' ] ]
		on: Exception
		do: [ :ex | 
			experiment := nil.
			error := ex asString ]