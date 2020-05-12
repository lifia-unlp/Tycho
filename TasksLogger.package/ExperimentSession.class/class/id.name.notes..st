instance creation
id: anId name: aName notes: someNotes
	^ self new
		id: anId;
		name: aName;
		notes: someNotes;
		yourself