voyage-access
experimentFromParameters: parameters
	| designs theId |
	designs := Experiment selectAll.
	theId := parameters at: #experimentDesignId.
	^(designs select: [ :each | each id = theId ]) first