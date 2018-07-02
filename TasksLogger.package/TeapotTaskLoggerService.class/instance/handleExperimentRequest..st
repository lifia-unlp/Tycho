route handlers
handleExperimentRequest: req
	| id resp json |
	id := req at: #id.
	resp := self store experimentId: id.
	json := resp asJson.
	^ json