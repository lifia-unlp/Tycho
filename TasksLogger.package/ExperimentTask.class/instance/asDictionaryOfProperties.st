json
asDictionaryOfProperties
	| modelDict dict |
	modelDict := Dictionary new.
	self properties do: [ :each | modelDict at: each name put: each value ].
	modelDict at: 'id' put: self id.
	dict := Dictionary new.
	dict
		at: 'componentClassname' put: self componentClassname;
		at: 'name' put: self name;
		at: 'notes' put: self notes;
		at: 'isPrototype' put: self isPrototype;
		at: 'model' put: modelDict.
	^ dict