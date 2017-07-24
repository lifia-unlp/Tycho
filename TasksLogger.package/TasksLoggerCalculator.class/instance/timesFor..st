accessing - statistics
timesFor: aTask
	^ self users collect: [ :user | (user taskResultForTask: aTask) milliseconds ]