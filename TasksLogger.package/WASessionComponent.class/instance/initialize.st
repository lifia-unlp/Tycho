initialization
initialize
	super initialize.
	nameEditor := InPlacePropertyEditorComponent new.
	nameEditor headingLevel: 3.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		headingLevel: 3