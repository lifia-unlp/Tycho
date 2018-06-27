route handlers
handleDesignRequest: req
	| designId resp json |
	designId := req at: #id.
	resp := ExperimentDesign selectAll detect: [ :each | each id = designId ] ifNone: [ ^ nil ].
	json := resp asJson.
	^ json