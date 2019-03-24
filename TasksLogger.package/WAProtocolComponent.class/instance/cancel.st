callbacks
cancel
	self protocol copyFrom: originalProtocol.
	self store save: self protocol.
	self answer: nil