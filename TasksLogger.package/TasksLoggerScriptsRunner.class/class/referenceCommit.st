commits
referenceCommit
	^ (IceRepository allInstances detect: [ :each | each name = 'Tycho' ]) loadedCode referenceCommit commitId first: 7