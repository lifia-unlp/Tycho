importing
importSamples: samples
	samples
		do: [ :each | 
			each id: each id , '-' , Time millisecondClockValue asString.
			self rememberToSave: each ]