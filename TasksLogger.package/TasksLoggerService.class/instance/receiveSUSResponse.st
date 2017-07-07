endpoints
receiveSUSResponse
	<post>
	<path: '/sus/create/'>
	| parameters susResponse user |
	parameters := self requestContext request fields.
	user := self userFromParameters: parameters.
	susResponse := self susFromParameters: parameters.
	user
		susResponse: susResponse;
		save.
	susResponse save.
	self respondOk