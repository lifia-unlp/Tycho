callbacks
addNewProtocol
	| protocol |
	protocol := ExperimentProtocol name: 'Unnamed protocol' notes: ''.
	self session account addProtocol: protocol.
	self store save: self session account.
	self showDetailsOfProtocol: protocol