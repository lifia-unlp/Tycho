initialization
initialize
	super initialize.
	taskResults := OrderedCollection new.
	timestamp := DateAndTime now