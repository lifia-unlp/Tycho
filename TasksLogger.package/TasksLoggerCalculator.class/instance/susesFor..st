accessing - statistics
susesFor: aTask
	^ self users collect: [ :user | (user taskResultForTask: aTask) susResponse ]