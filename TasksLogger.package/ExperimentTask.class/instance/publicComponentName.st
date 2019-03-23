accessing
publicComponentName
	^ self componentClassname uncameled allButFirst withoutSuffix: 'component'