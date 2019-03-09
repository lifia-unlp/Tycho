request handlers
semaphore: id for: aProtocolId
	| resp json |
	json := nil.
	resp := self store semaphore: id for: aProtocolId.
	resp
		ifNotNil: [ json := RestResponseWriter new semaphoreAsJson: resp.
			json ].
	^ json