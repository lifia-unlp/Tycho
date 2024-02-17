testing
testExtractSemaphoreIds
	"Test the method that extracts the semaphore ids from the properties of a task"
			
	| waitOnSemTask signalSemTask noSemTask |
    waitOnSemTask:= (ExperimentTask semaphoreWaitPrototype) cloneWithNewId: 1.
    waitOnSemTask atProperty: 'semaphoreId' setValue: 'documentReady'.
    signalSemTask:= (ExperimentTask semaphoreSignalPrototype) cloneWithNewId: 2.
    signalSemTask atProperty: 'semaphoreId' setValue: 'documentReady'.
    noSemTask:= (ExperimentTask basicTaskInstructionsPrototype) cloneWithNewId: 3.

	 self assertCollection: (waitOnSemTask extractSemaphoreIds) equals: (OrderedCollection with: 'documentReady').
    self assertCollection: (signalSemTask extractSemaphoreIds) equals: (OrderedCollection with: 'documentReady').
    self assertCollection: (noSemTask extractSemaphoreIds) equals: (OrderedCollection empty).