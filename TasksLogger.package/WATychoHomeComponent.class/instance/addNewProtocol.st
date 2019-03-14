callbacks
addNewProtocol
	| protocol |
	protocol := ExperimentProtocol name: 'Unnamed protocol' notes: ''.
	self session account addProtocol: protocol.
	self store rememberToSave: self session account.
	self store savePending.
	self showDetailsOfProtocol: protocol