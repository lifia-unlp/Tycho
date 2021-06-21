commits
referenceCommit
	| workingCopy |
	workingCopy := self iceWorkingCopy.
	^ workingCopy
		ifNil: [ 'N/A' ]
		ifNotNil: [ workingCopy referenceCommit id first: 7 ]