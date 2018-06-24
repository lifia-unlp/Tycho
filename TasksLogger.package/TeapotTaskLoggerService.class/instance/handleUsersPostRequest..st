route handlers
handleUsersPostRequest: req
	| user |
	user := self userFromParameters: req.
	user save.
	^'ok'