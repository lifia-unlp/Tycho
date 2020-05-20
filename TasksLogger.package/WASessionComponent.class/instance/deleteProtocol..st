callbacks
deleteProtocol: aProtocol
	self experimentSession deleteProtocol: aProtocol.
	self experimentSession protocols do: [ :protocol | self store rememberToSave: protocol ].
	self store save: self experimentSession