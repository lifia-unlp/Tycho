singleton
singleton
	singleton ifNil: [ singleton := self basicNew ].
	^ singleton