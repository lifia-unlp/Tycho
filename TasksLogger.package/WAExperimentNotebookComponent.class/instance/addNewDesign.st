callback
addNewDesign
	| newId designs |
	designs := ExperimentDesign selectAll.
	designs isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (ExperimentDesign selectAll collect: [ :each | each id  ]) max + 1 ].
	(ExperimentDesign id: newId  notes: '') save