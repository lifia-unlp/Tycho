callbacks
addExample
	self session account protocols addAll: self store exampleProtocols.
	self store save: self session account