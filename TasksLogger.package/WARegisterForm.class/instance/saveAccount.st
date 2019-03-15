controlling
saveAccount
	(self store existingEmails includes: self account email)
		ifTrue: [ self
				error: 'There is already an account with the email ' , self account email greaseString ]
		ifFalse: [ self store save: self account ]