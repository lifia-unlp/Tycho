ids
newExperimentId
	^ monitor
		critical: [ ((self experiments inject: 0 into: [ :sub :each | sub max: each id asNumber ]) + 1) asString ]