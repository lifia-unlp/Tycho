prototypes
semaphoreSignalPrototype
	^ self new
		name: 'Signal Semaphore';
		notes: 'Signals the specified semaphore for multirole tasks synchronization.';
		componentClassname: 'SemaphoreSignalComponent';
		addProperty: 'semaphoreId' describedBy: 'The id of the semaphore.' value: '#allIn';
		becomePrototype