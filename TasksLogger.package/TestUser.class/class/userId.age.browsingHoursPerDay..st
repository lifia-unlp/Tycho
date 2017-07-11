instance creation
userId: aUUIDString age: anAge browsingHoursPerDay: aNumber
	^ self new
		id: aUUIDString;
		age: anAge;
		browsingHoursPerDay: aNumber;
		yourself