ids
newTaskId
	^ monitor
		critical: [ lastTaskId ifNil: [ lastTaskId := self computeLastTaskId ].
			lastTaskId := lastTaskId + 1.
			lastTaskId asString ]