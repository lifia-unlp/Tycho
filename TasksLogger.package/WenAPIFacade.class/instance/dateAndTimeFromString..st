store
dateAndTimeFromString: aString
	| startTimeStream startDate startTime |
	startTimeStream := aString readStream.
	startDate := Date
		readFrom: (startTimeStream upTo: $ ) readStream
		pattern: 'd/m/yyyy'.
	startTime := Time readFrom: startTimeStream.
	^ DateAndTime date: startDate time: startTime