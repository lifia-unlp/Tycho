route handlers
handleSessionsRequest: req
	| sessionId resp json |
	sessionId := req at: #id.
	resp := (ExperimentSession selectAll select: [ :each | each id = sessionId ]) first.
	json :=  resp asJson.
	^ json