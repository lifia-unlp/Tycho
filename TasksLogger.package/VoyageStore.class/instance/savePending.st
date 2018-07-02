saving
savePending
	objectsToSave do: [ :each | each save ].
	objectsToSave := OrderedCollection new. 