persistence-access
sampleFromParameters: parameters
	| sample id |
	id := parameters at: #sampleId.
	sample := self store sampleId: id.
	sample
		ifNil: [ sample := ExperimentSample id: id.
			self store rememberToSave: sample ].
	^ sample