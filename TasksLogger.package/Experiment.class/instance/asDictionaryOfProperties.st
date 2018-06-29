json
asDictionaryOfProperties
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: self id;
		at: 'notes' put: self notes;
		at: 'tasks'
			put: (self tasks collect: [ :each | each asDictionaryOfProperties ]).
	^ dict