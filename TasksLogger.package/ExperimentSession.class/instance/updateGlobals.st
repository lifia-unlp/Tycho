globals
updateGlobals
	"Clears and reloads the semapahores and variables required by the experiment session.
	It could be used when any of the protocols included in the experiment to which the session belongs changes."

	self clearGlobals.
	self loadGlobals.