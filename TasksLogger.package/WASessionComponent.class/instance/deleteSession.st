callbacks
deleteSession
	self session account deleteSession: self experimentSession.
	self store removeSession: self experimentSession.
	self store save: self session account