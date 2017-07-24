accessing - statistics
successesFor: aTask
	^ self users
		collect: [ :user | 
			(user taskResultForTask: aTask) successful
				ifTrue: [ 1 ]
				ifFalse: [ 0 ] ]