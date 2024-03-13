initialization
id: semaphoreId session: aSession status: aNumber
	"Initializes an experiment semaphore recently created"

	id := semaphoreId.
	session := aSession.
	status := aNumber.
	self initializeSem.