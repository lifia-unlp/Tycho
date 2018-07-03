print
sampleAsDictionary: sample
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: sample id;
		at: 'taskResults'
			put:
			((sample taskResults asSortedCollection: [ :a :b | a task id <= b task id ])
				collect: [ :result | self taskResultAsDictionary: result ]).
	^ dict