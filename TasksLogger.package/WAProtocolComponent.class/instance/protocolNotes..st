accessing
protocolNotes: aString
	protocol notes: aString.
	self store rememberToSave: protocol.
	self store savePending. 
	