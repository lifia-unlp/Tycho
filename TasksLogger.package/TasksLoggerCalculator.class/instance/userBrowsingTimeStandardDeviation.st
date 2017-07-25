accessing - user statistics
userBrowsingTimeStandardDeviation
	| times |
	times := self userBrowsingTimes.
	^ ((times sumNumbers: [ :age | (self userAgeMean - age) squared ]) / times size) sqrt