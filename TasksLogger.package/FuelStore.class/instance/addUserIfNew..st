private
addUserIfNew: aUserAccount
	(users includes: aUserAccount)
		ifFalse: [ users add: aUserAccount ]