users
addUser: aUserAccount
	(self existingEmails includes: aUserAccount email)
		ifTrue: [ self
				error: 'There is already an account with the email ' , aUserAccount email greaseString ]
		ifFalse: [ self save: aUserAccount ]