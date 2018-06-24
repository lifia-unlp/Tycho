voyage-access
userFromParameters: parameters
	^ self fetchOrSave: (TestUser userId: (parameters at: #userId))