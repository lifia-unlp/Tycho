ids
newParticipantId
	(Delay forMilliseconds: 1) wait. "Delay to ensure that the same participant ID is not created if the method is invoked twice in a row"
	^ Time millisecondClockValue printString.