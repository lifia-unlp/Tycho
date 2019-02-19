accessing
semaphores
	^ semaphores
		ifNil: [ semaphores := OrderedCollection new ]