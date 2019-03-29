prototypes
semaphoreWaitPrototype
	^ self new
		name: 'Wait for Semaphore';
		notes: 'Blocks the execution of further tasks until the semaphore is signaled.';
		componentClassname: 'SemaphoreWaitComponent';
		addProperty: 'semaphoreId' describedBy: 'The id of the semaphore.' value: 'allIn';
		addProperty: 'message' describedBy: 'A message for the user to see while they wait.' value: 'Something is happening elsewhere.';
		becomePrototype