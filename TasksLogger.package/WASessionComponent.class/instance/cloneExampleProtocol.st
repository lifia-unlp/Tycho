controlling
cloneExampleProtocol
	| example |
	example := self store addExampleProtocol.
	example name: 'A copy of ' , example name.
	self session addProtocol: example.
	self store rememberToSave: session.
	self store savePending