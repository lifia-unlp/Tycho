properties
atProperty: propertyName
	^ (properties detect: [ :each | each name = propertyName ]) value