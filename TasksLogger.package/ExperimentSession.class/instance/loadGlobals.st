globals
loadGlobals
	"Adds to the session the semaphores and variables required by the protocols of the experiment"
			
	self experiment protocols do: [ :protocol | 
		self extractGlobalsFrom: protocol. 
	]