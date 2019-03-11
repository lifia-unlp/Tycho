validation
initializeValidators
	super initializeValidators.
	validators
		add: (NotEmptyValidator on: #fullName of: self);
		add: (ReCaptchaValidator on: #isValid of: reCaptcha);
		add: (EmailValidator on: #email of: self);
		add: (UniqueValidator on: #email of: self existingValues: self existingEmails);
		add: (NotEmptyValidator on: #password of: self)