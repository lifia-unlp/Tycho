callbacks
addNewProtocol
	| protocol |
	protocol := ExperimentProtocol name: 'Unnamed protocol' notes: ''.
	self store rememberToSave: protocol.
	self store savePending. 
	self showDetailsOfProtocol: protocol.
	