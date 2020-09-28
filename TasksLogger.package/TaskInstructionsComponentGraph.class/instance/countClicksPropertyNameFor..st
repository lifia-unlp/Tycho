private - processing - tags
countClicksPropertyNameFor: captureEventTag
	^ 'countClicksTag-' , (captureEventTag at: 'url') , ','
		, (captureEventTag at: 'cssSelector')