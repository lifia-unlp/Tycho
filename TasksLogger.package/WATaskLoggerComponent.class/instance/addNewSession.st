callback
addNewSession
	| newId sessions |
	sessions := ExperimentSession selectAll.
	sessions isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (ExperimentSession selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	(ExperimentSession id: newId asString description: '') save