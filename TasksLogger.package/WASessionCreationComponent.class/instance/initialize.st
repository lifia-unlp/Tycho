initialization
initialize
	"Initialize the view component to configure a new session"
	
	super initialize.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor beTextArea; headingLevel: 4.
	variablesList := WAVariableListComponent new.
	semaphoresList := WASemaphoreListComponent new.
	self initializeParticipantsComponent.