accesing
semaphores
	^ semaphores
		ifNil: [ semaphores := OrderedCollection new ]