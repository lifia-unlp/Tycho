private - processing - tags
splitCaptureEventsTag: captureTag
	| collectionCaptureTag dictionaryCaptureEventsTag |
	dictionaryCaptureEventsTag := Dictionary new.
	collectionCaptureTag := (captureTag splitOn: ',') collect:[:ct | ct trimBoth ].
	collectionCaptureTag size == 2 ifFalse: [
			^ dictionaryCaptureEventsTag.
		].
	(((collectionCaptureTag at:2) first = $.) | 
	((collectionCaptureTag at:2) first == $#)) ifFalse:[
		^ dictionaryCaptureEventsTag.
	].
	dictionaryCaptureEventsTag at:'url' put: (collectionCaptureTag at:1).
	dictionaryCaptureEventsTag at:'cssSelector' put: (collectionCaptureTag at:2).
	^ dictionaryCaptureEventsTag.
	