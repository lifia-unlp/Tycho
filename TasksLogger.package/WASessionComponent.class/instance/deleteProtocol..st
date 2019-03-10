callbacks
deleteProtocol: aProtocol
	self session deleteProtocol: aProtocol.
	self store
		rememberToSave: self session;
		savePending