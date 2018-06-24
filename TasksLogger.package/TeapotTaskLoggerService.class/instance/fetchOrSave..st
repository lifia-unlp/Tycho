voyage-access
fetchOrSave: anObject
	| stored |
	stored := anObject class selectOne: [ :persisted | persisted id = anObject id ].
	^ stored ifNil: [ anObject save ]