voyage-access
experimentDesignFromParameters: parameters
	| designs theId |
	designs := ExperimentDesign selectAll.
	theId := parameters at: #experimentDesignId.
	^(designs select: [ :each | each id = theId ]) first