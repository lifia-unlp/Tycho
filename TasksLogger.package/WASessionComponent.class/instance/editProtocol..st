callbacks
editProtocol: aProtocol
	self
		call: (WAProtocolComponent on: aProtocol)
		onAnswer: [ :answer | 
			self experimentSession updateGlobals.
			self store save: self experimentSession ]