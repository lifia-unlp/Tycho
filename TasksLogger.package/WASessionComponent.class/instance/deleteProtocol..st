callbacks
deleteProtocol: aProtocol
	self experimentSession deleteProtocol: aProtocol.
	self store
		rememberToSave: self experimentSession;
		savePending