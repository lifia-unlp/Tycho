initialization
initialize
	super initialize.
	account := UserAccount new.
	email := ''.
	fullName := ''.
	reCaptcha := WAReCaptcha new.
	reCaptcha recaptchaSiteKey isNil
		ifTrue: [ reCaptcha := nil ].
	justFailed := false.
	self initializeValidators