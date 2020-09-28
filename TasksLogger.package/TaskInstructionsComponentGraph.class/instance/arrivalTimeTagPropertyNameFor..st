private - processing - tags
arrivalTimeTagPropertyNameFor: captureEventTag
	^ 'arrivalTimeTag-' , (captureEventTag at: 'url') , ','
		, (captureEventTag at: 'cssSelector')