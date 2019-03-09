prototype-management
cloneWithNewId: anId
	| clone |
	clone := ExperimentTask
		id: anId
		name: self name
		notes: self notes
		componentClassname: self componentClassname.
	self properties
		do: [ :each | clone addProperty: each name describedBy: each description value: each value ].
	^ clone