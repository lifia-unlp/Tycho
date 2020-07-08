callbacks
changeWeight: value toProtocol: protocol
	protocol dataExecution weight: value asNumber asFloat.
	self store rememberToSave: protocol.
	"^ self store save: protocol"