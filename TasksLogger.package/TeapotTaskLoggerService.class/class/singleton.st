singleton
singleton
	singleton ifNil: [ singleton := self basicNew initialize ].
	^ singleton