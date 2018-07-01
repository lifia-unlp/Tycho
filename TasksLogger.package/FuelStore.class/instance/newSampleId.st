ids
newSampleId
	lastSampleId ifNil: [ lastSampleId := self computeLastSampleId ].
	lastSampleId := lastSampleId + 1.
	^ lastSampleId asString