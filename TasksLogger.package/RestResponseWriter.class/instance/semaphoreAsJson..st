print
semaphoreAsJson: semaphore
	^ NeoJSONWriter toStringPretty: (self semaphoreAsDictionary: semaphore)