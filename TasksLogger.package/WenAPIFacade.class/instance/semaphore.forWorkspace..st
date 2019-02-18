request handlers
semaphore: id forWorkspace: sampleId
	| resp json |
	json := nil.
	resp := self store semaphore: id forWorkspace: sampleId.
	resp
		ifNotNil: [ json := RestResponseWriter new semaphoreAsJson: resp.
			json ].
	^ json