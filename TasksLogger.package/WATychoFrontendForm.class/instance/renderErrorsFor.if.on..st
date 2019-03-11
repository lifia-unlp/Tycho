validation
renderErrorsFor: aSelector if: aBoolean on: html
	| errorMessages |
	errorMessages := (self validatorsFor: aSelector)
		select: [ :validator | validator fails ]
		thenCollect: [ :validator | validator errorMessage ].
	aBoolean
		ifTrue: [ errorMessages
				do: [ :message | 
					html paragraph
						class: #errorMessage;
						with: message ] ]