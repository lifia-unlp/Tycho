instance creation
name: propName description: desc value: aValue typeInput: aType
	^ self new
		name: propName;
		description: desc;
		value: aValue;
		typeInput: aType;
		yourself