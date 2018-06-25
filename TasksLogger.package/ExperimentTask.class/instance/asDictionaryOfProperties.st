printing
asDictionaryOfProperties
	| paramsDict dict |
	paramsDict := Dictionary new.
	paramsDict
		at: 'id' put: self id;
		at: 'description' put: self description;
		at: 'successCondition' put: self successCondition.
	dict := Dictionary new.
	dict
		at: 'componentClass' put: self componentClassname;
		at: 'parameters' put: paramsDict.
	^dict. 