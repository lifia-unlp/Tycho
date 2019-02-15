request handlers
updateSemaphore: jsonRepresentationOfAnExistingSemaphore
	| payload semaphore |
	payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingSemaphore.
	semaphore := self store semaphoreId: (payload at: 'id') forSample: (payload at: 'sampleId').	
	semaphore status: (payload at: 'status') .
	^ 'ok'