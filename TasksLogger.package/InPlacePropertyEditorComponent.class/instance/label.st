accessing
label
	^ label ifNil: [ getSelector asString asCamelCase ]