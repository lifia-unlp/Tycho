testing
credentialsMatchAccount: anAccount
	^ anAccount email = self email trimmed asLowercase
		& (anAccount encryptedPassword = (self encryptedPasswordFor: anAccount))