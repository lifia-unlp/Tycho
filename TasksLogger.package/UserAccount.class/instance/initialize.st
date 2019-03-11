initialization
initialize
	super initialize.
	name := ''.
	salt := UUID new greaseString.
	protocols := OrderedCollection new.
	sessions := OrderedCollection new