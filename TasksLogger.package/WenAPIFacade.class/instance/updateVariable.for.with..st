request handlers
updateVariable: variableId for: sessionId with: jsonRepresentationOfAnExistingVariable
	"Updates the value of the variable with the given ID with the value sent in the JSON representation of the variable"	
		
	| session variable payload |
	monitor
		critical: [ 
			session := self store sessionId: sessionId.
			session ifNil: [ ^ nil ].
			variable := session variableWithId: variableId. 
			variable ifNil: [ ^ nil ].
			"Variable exists"
			payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingVariable.
			variable value: (payload at: 'value').
			self store save: session.
			^ RestResponseWriter new variableAsJson: variable.
		]