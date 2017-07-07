objects creation
userFromParameters: parameters
	^ self fetchOrSave: (TestUser userId: (parameters at: #userId))