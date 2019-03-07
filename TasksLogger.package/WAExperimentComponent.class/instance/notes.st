accessing
notes
	^ self experiment ifNil: [ '' ] ifNotNil: [ self experiment notes ]