initialization
initialize
	super initialize.
	notesEditor := InPlacePropertyEditorComponent on: #notes of: self.
	notesEditor beTextArea