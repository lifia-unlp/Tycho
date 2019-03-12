accessing
password: aPlainPassword
	| key |
	key := (self salt , aPlainPassword) asByteArray.
	self encryptedPassword: (SHA256 new hashMessage: key) asString