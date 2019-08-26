print
experimentAsDictionary: experiment
	| dict |
	dict := Dictionary new.
	dict
		at: 'name' put: experiment name;
		at: 'notes' put: experiment notes;
		at: 'tasks' put: (experiment tasks collect: [ :each | self taskAsDictionary: each ]).
	^ dict