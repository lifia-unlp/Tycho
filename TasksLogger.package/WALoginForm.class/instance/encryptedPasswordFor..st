testing
encryptedPasswordFor: userAccount
	| key |
	key := (userAccount salt , self password) asByteArray.
	^ (SHA256 new hashMessage: key) asString