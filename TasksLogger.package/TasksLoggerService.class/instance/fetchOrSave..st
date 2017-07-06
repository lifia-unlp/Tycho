private
fetchOrSave: aTestTask
	| storedTask |
	storedTask := TestTask selectOne: [ :task | task id = aTestTask id ].
	^ storedTask ifNil: [ aTestTask save ]