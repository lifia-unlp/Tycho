callbacks
addExample
	| exp |
	exp := Experiment id: 99 notes: 'a sample experiment'.
	exp save.
	ExperimentTask prototypes
		do: [ :each | 
			exp
				addTask:
					(each clone
						save;
						yourself) ].