accessing - user statistics
userAgeStandardDeviation
	| ages |
	ages := self userAges.
	^ ((ages sumNumbers: [ :age | (self userAgeMean - age) squared ]) / ages size) sqrt