instance creation
name: aName notes: someNotes
	"Create an experiment with the given name and description, but without protocols"

	^ self new
		name: aName;
		notes: someNotes;
		yourself