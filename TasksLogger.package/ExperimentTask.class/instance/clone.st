prototype-management
clone
	| anId clone |
	anId := (ExperimentTask selectAll inject: 0 into: [ :sub :next | sub max: next id asNumber ]) + 1.
	clone := ExperimentTask
		id: anId asString
		name: self name
		notes: self notes
		componentClassname: self componentClassname.
	self properties do: [ :each | clone addProperty: each name describedBy: each description ].
	^ clone