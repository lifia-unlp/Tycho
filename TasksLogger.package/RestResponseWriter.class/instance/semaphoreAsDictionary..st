print
semaphoreAsDictionary: semaphore
	| dict |
	dict := Dictionary new.
	dict
		at: 'id' put: semaphore id;
		at: 'status' put: semaphore status;
		at: 'session' put: semaphore session.
	^ dict