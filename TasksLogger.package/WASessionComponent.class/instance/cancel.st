callbacks
cancel
	self experimentSession protocols do: [ :protocol | self store remove: protocol ].
	self experimentSession copyFrom: originalSession.
	self store save: self experimentSession.
	self answer: nil