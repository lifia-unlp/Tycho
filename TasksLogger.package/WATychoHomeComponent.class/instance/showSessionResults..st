rendering-sessions
showSessionResults: aSession
	self
		show:
			(WASessionResultsComponent new
				session: aSession;
				yourself)