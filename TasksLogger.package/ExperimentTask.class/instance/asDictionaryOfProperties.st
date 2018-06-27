json
asDictionaryOfProperties
	| paramsDict dict |
	paramsDict := Dictionary new.
	self properties do: [ :each | paramsDict at: each name put: each value ].
	dict := Dictionary new.
	dict
		at: 'componentClassname' put: self componentClassname;
		at: 'id' put: self id;
		at: 'name' put: self name;
		at: 'notes' put: self notes;
		at: 'isPrototype' put: self isPrototype;
		at: 'parameters' put: paramsDict.
	^ dict