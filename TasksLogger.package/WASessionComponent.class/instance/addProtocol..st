controlling
addProtocol: protocol
	| clone |
	clone := protocol clone.
	clone id: self store newExperimentId.
	self session addProtocol: clone.
	self store save: self session