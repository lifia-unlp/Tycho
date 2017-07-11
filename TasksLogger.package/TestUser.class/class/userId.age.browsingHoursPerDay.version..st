instance creation
userId: aUUIDString age: anAge browsingHoursPerDay: aNumber version: aString
	^ self new
		id: aUUIDString;
		age: anAge;
		browsingHoursPerDay: aNumber;
		version: aString;
		yourself