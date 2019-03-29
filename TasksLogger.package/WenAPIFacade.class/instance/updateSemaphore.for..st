request handlers
updateSemaphore: jsonRepresentationOfAnExistingSemaphore for: protocolId
	| payload semaphore |
	monitor
		critical: [ payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingSemaphore.
			semaphore := self store semaphore: (payload at: 'id') for: protocolId.
			semaphore status: (payload at: 'status').
			^ 'ok' ]