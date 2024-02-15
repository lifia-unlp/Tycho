initialization
initialize
	"Initialize a recently created experiment with empty collections of protocols, bots and sessions"

	super initialize.
	protocols := OrderedCollection new.
	bots:= OrderedCollection new.
	sessions:= OrderedCollection new.