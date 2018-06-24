printing
asDictionaryOfProperties
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: self id;
		at: 'description' put: self description;
		at: 'componentSpecSequence' put: (self tasks collect: [ :each | each asDictionaryOfProperties ]).
	^ dict