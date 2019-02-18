request handlers
updateSemaphore: jsonRepresentationOfAnExistingSemaphore
	| payload semaphore |
	payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingSemaphore.
	semaphore := self store semaphore: (payload at: 'id') forWorkspace: (payload at: 'workspace').	
	semaphore status: (payload at: 'status') .
	^ 'ok'