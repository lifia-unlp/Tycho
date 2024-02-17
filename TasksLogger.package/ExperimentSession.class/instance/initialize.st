initialization
initialize
	"Initializes a recently created experiment session without participants, semaphores and variables, and with a status not-started"

	super initialize.
	status:= 'not-started'.
	participants:= OrderedCollection new.
	semaphores := OrderedCollection new.
	variables := OrderedCollection new.