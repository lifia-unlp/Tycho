properties
atProperty: propertyName setValue: newValue
	(properties detect: [ :each | each name = propertyName ]) value: newValue