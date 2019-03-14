callbacks
deleteProtocol: aProtocol
	self experimentSession deleteProtocol: aProtocol.
	self store save: self experimentSession