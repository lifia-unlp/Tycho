initialization
initialize
	super initialize.
	nameEditor := InPlacePropertyEditorComponent new.
	nameEditor
		headingLevel: 4;
		label: 'Name'.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		label: 'Notes';
		headingLevel: 4.
	semaphoreComponent := WASemaphoreListComponent new