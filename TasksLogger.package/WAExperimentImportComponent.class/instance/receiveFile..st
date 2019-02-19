rendering
receiveFile: aFile
	[ experiment := FLMaterializer materializeFromByteArray: aFile rawContents.
	experiment class == ExperimentProtocol
		ifFalse: [ experiment := nil.
			error := 'Not an experiment' ] ]
		on: Exception
		do: [ :ex | 
			experiment := nil.
			error := ex asString ]