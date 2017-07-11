accessing
taskResultForTask: aTask
	^ self taskResults detect: [ :taskResult | taskResult task = aTask ]