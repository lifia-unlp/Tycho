request handlers
variable: variableId for: sessionId
	"Returns the variable with the given ID for the specified session"
	| session variable |
	
	monitor
		critical: [
			session := self store sessionId: sessionId.
			session ifNil: [ ^ nil ].
			variable := session variableWithId: variableId.
			variable ifNil: [ ^ nil ].
			^ RestResponseWriter new variableAsJson: variable.
		]