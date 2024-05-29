callbacks
cloneProtocol: anExperimentProtocol
	"Creates a new protocol for the experiment by cloning the given generic protocol and assigning it an ID"

	| clone |
	anExperimentProtocol notNil
		ifFalse: [ ^ self ].
	clone := self store cloneProtocol: anExperimentProtocol.
	self experiment addProtocol: clone.
	self store rememberToSave: clone.
	clone tasks do: [ :task | self store rememberToSave: task ].
	self store save: self experiment