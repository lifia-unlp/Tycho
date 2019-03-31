globals
semaphoreWithId: anId
	^ semaphores detect: [ :each | each id = anId ] ifNone: [ nil ]