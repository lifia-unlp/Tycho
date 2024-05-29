callbacks
addEmptyProtocol
	"Creates a new empty protocol, that is, without tasks that compose it, and assigns it a unique identifier. 
	Then adds it to the experiment attached to this view."

	| empty |
	empty := self store newProtocol.
	self experiment addProtocol: empty.
	self store rememberToSave: empty.
	self store save: self experiment