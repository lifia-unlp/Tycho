users
existingEmails
	^ self users collect: [ :userAccount | userAccount email ]