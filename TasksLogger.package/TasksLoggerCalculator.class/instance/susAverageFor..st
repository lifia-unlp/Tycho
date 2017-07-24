accessing - statistics
susAverageFor: aTask
	^ ((self susesFor: aTask) collect: #score) average asFloat