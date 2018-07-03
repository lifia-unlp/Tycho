as dictionaries
experimentAsDictionary: experiment
	| dict sampleDicts |
	dict := super experimentAsDictionary: experiment.
	sampleDicts := experiment samples collect: [ :sample | self sampleAsDictionary: sample ].
	dict at: #samples put: sampleDicts.
	dict removeKey: #tasks.
	^ dict