instance-creation
id: anId name: aName notes: notes componentClassname: aClassname
	^ self new
	   id: anId;
		name: aName;
		notes: notes;
		componentClassname: aClassname;
		yourself