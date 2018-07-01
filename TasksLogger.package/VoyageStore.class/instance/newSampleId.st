ids
newSampleId
	| samples newId |
	samples := ExperimentSample selectAll.
	samples isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (samples collect: [ :each | each id asNumber ]) max + 1 ].
	^ newId asString