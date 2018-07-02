instance creation
name: propName description: desc value: aValue
	^ self new
		name: propName;
		description: desc;
		value: aValue;
		yourself