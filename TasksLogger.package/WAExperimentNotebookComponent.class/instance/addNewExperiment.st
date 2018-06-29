callbacks
addNewExperiment
	| newId designs |
	designs := Experiment selectAll.
	designs isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (Experiment selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	(Experiment id: newId asString notes: '') save