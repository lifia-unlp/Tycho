print
experimentAsDictionary: experiment
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: experiment id;
		at: 'notes' put: experiment notes;
		at: 'tasks' put: (experiment tasks collect: [ :each | self taskAsDictionary: each ]).
	^ dict