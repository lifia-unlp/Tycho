controlling
logout
	self session unregister.
	self requestContext redirectTo: self application url