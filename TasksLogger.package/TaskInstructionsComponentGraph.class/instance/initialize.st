initialization
initialize
	super initialize.
	tagListeners := OrderedCollection new.
	tagListeners add: 'overTag'.
	tagListeners add: 'countClicksTag'.