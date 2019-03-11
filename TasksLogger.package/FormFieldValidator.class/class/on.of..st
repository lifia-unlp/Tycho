instance creation
on: aSelector of: anObject
	^ self new
		selector: aSelector;
		receiver: anObject;
		yourself