ids
computeLastTaskId
	^ monitor
		critical: [ (self protocols inject: Set new into: [ :sub :each | sub , each tasks ])
				inject: 0
				into: [ :sub :task | sub max: task id asNumber ] ]