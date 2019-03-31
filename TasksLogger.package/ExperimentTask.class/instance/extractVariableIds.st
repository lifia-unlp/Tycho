globals
extractVariableIds
	| varTags |
	varTags := self properties flatCollect: [ :property | (Soup fromString: property value) findAllTags: 'tyvar' ].
	^ (varTags collect: [ :each | (each attributeAt: 'var') asLowercase ]) asSet