objects creation
susFromParameters: parameters
	^ SUSResponse
		with:
			((1 to: 10)
				collect: [ :questionNumber | (parameters at: 'question' , questionNumber printString) asNumber ])