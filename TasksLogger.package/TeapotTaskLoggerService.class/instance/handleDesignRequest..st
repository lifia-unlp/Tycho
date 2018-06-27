route handlers
handleDesignRequest: req
	| designId resp json |
	designId := req at: #id.
	resp := (ExperimentDesign selectAll
		select: [ :each | each id = designId asNumber]) first.
	json := resp asJson.
	^ json