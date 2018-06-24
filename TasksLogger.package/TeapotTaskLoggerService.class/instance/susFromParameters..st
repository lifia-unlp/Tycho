voyage-access
susFromParameters: parameters
	| choice |
	^ SUSResponse
		with:
			((1 to: 10)
				collect: [ :questionNumber | 
					choice := parameters at: 'question' , questionNumber printString ifAbsent: [ 'undefined' ].
					choice = 'undefined'
						ifTrue: [ -1 ]
						ifFalse: [ choice asNumber ] ])