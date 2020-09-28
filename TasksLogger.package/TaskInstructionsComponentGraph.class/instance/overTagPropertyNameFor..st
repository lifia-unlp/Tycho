private - processing - tags
overTagPropertyNameFor: captureEventTag
	^ 'overTag-' , (captureEventTag at: 'url') , ','
		, (captureEventTag at: 'cssSelector')