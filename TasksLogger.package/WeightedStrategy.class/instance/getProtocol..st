strategy
getProtocol: aSession
	| candidates |
	candidates := aSession protocols select: [ :protocol | protocol canExecutedForWeight: aSession ].
	candidates ifEmpty: [ candidates := aSession protocols ].
	^ candidates atRandom.