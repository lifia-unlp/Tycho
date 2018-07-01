retrieving
newExperimentId
	^ (self experiments inject: 0 into: [ :sub :each | sub max: each asNumber ]) + 1