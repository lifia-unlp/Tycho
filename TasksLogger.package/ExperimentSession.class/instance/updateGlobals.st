globals
updateGlobals
	self clearGlobals.
	self protocols do: [ :protocol | self extractGlobalsFrom: protocol ]