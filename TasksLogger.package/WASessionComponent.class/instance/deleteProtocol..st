controlling
deleteProtocol: aProtocol
	self session deleteProtocol: aProtocol.
	self store save: self session