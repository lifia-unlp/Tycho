callbacks
addEmptyProtocol
	| empty |
	empty := self store newProtocol.
	self experimentSession addProtocol: empty.
	self store rememberToSave: empty.
	self store save: self experimentSession