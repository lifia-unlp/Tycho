endpoints
receiveDemographics
	<post>
	<path: '/users/'>
	| parameters user |
	parameters := self requestContext request fields.
	user := self userFromParameters: parameters.
	user save.
	self respondOk