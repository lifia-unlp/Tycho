instance creation
passBlock: aBlockClosure
	^ self new
		passBlock: aBlockClosure;
		yourself