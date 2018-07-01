ids
computeLastSampleId
	^ (self experiments inject: Set new into: [ :sub :each | sub , each samples ])
		inject: 0
		into: [ :sub :sample | sub max: sample id asNumber ]