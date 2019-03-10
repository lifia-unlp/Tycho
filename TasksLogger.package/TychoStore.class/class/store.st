accessing
store
	^ storeInstance ifNil: [ storeInstance := self storeClass new ]