accessing
allProtocolSampleResultTuples
	| selectedProtocolSampleTaskTuples |
	selectedProtocolSampleTaskTuples := session protocols
		flatCollect: [ :aProtocol | 
			aProtocol samples
				flatCollect: [ :aSample | 
					aSample taskResults
						collect: [ :aResult | 
							{aProtocol.
							aSample.
							aResult} ] ] ].
	^ selectedProtocolSampleTaskTuples