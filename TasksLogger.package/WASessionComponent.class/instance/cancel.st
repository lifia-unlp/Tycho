callbacks
cancel
	self experimentSession copyFrom: originalSession.
	self store save: self experimentSession.
	self answer: nil