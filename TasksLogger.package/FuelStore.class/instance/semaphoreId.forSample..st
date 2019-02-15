retrieving
semaphoreId: id forSample: sampleId
	^ self semaphores detect: [ :each | each id = id ] ifNone: [ ^ nil ]