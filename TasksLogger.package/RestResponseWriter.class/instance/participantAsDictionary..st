print
participantAsDictionary: participant
	| dict |
	
	dict := Dictionary new.
	dict
		at: 'id' put: participant id;
		at: 'startTime' put: ((participant startTime) ifNotNil: [ participant startTime asString ] ifNil: [nil]);
		at: 'duration' put: participant duration;
		at: 'status' put: participant status;
		at: 'protocol' put: (self experimentAsDictionary: participant protocol).
	^ dict