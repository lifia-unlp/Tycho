ids
newExperimentId
	| experiments newId |
	experiments := Experiment selectAll.
	experiments isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (Experiment selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	^ newId asString