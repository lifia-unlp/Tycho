controlling
save
	self validate.
	self ifValid: [ self succeed ] ifNotValid: [ self fail ]