initialization
initialize
	super initialize.
	account := UserAccount new.
	email := ''.
	fullName := ''.
	reCaptcha := 'recaptcha.txt' asFileReference exists
		ifTrue: [ WAReCaptcha new ]
		ifFalse: [ nil ].
	justFailed := false.
	self initializeValidators