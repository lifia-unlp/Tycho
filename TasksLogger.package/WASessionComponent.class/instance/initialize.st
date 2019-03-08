initialization
initialize
	super initialize.
	nameEditor := InPlacePropertyEditorComponent new.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor beTextArea