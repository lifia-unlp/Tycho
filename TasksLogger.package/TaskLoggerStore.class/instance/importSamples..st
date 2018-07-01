importing
importSamples: samples
	samples
		do: [ :each | 
			each id: self newSampleId.
			self rememberToSave: each ]