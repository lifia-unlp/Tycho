callbacks
removeTask: each
	protocol removeTask: each.
	self store
		rememberToSave: protocol;
		savePending