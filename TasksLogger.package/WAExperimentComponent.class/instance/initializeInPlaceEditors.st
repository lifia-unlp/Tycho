initialization
initializeInPlaceEditors
	"Initializes the components that display and eventually edit the name and notes for an experiment"
	
	nameEditor := InPlacePropertyEditorComponent new.
	nameEditor headingLevel: 4.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		headingLevel: 4

	
			