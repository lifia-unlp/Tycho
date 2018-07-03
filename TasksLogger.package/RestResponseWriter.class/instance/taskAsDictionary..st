print
taskAsDictionary: task
	| modelDict dict |
	modelDict := Dictionary new.
	task properties do: [ :each | modelDict at: each name put: each value ].
	modelDict at: 'id' put: task id.
	dict := Dictionary new.
	dict
		at: 'componentClassname' put: task componentClassname;
		at: 'name' put: task name;
		at: 'notes' put: task notes;
		at: 'isPrototype' put: task isPrototype;
		at: 'model' put: modelDict.
	^ dict