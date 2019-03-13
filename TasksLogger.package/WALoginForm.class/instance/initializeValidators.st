validation
initializeValidators
	super initializeValidators.
	validators
		add: (EmailValidator on: #email of: self);
		add: (NotEmptyValidator on: #password of: self);
		add:
			((PluggableValidator on: #account of: self)
				passBlock: [ self allUsers anySatisfy: [ :stored | self credentialsMatchAccount: stored ] ])