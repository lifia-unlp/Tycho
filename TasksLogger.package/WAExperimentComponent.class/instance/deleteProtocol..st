callbacks
deleteProtocol: aProtocol

	self experiment deleteProtocol: aProtocol.
	self store save: self experiment