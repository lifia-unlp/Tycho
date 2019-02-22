accessing
sessions
	^ workspaces ifNil: [ workspaces := OrderedCollection new ]