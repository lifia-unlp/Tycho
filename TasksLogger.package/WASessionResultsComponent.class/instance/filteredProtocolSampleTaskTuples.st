accessing
filteredProtocolSampleTaskTuples
	| selectedProtocolSampleResultTuples |
	selectedProtocolSampleResultTuples := self allProtocolSampleResultTuples.
	selectedProtocol
		ifNotNil: [ selectedProtocolSampleResultTuples := selectedProtocolSampleResultTuples
				select: [ :tuple | tuple first = selectedProtocol ] ].
	selectedSample
		ifNotNil: [ selectedProtocolSampleResultTuples := selectedProtocolSampleResultTuples
				select: [ :tuple | tuple second = selectedSample ] ].
	selectedTaskName
		ifNotNil: [ selectedProtocolSampleResultTuples := selectedProtocolSampleResultTuples
				select: [ :tuple | tuple third task name = selectedTaskName ] ].
	^ selectedProtocolSampleResultTuples sorted: [ :earlier :latter | earlier third startTime < latter third startTime ]