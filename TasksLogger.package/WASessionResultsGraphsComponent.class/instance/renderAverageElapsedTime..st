callbacks
renderAverageElapsedTime: aCollectionTaskResults
	^ (aCollectionTaskResults inject: 0 into: [ :sum :taskResult | sum + taskResult ellapsedMs ]) / (aCollectionTaskResults size) asFloat