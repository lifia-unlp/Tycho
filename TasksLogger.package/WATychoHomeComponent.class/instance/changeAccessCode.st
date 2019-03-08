callbacks
changeAccessCode
	| newCode config |
	config := TychoFileBasedConfiguration load.
	newCode := self request: 'New access code' default: config adminAccessCode.
	newCode notEmpty
		ifTrue: [ config
				adminAccessCode: newCode;
				save ]