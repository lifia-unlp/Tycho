initialization
initialize
	"Initializes a recently created experiment session without participants, semaphores and variables, and with a status not-started"

	super initialize.
	notes:= ''.
	status:= 'not-started'.
	participants:= Dictionary new.
	semaphores := OrderedCollection new.
	variables := OrderedCollection new.