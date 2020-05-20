callbacks
addEmptyProtocol
	| empty |
	empty := self store newProtocol.
	self experimentSession addProtocol: empty.
	self store rememberToSave: empty.
	self experimentSession protocols do: [ :protocol | self store rememberToSave: protocol ].
	self store save: self experimentSession