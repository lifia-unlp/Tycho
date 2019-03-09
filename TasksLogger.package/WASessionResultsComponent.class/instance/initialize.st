initialization
initialize
	super initialize.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		headingLevel: 3