initialization
initializeOn: anExperimentBot with: aProtocolCollection
	"Intialize the component to configure the given experiment bot"	
	
	bot:= anExperimentBot.
	originalBot := anExperimentBot veryDeepCopy.
	protocols:= aProtocolCollection.	
	nameEditor := InPlacePropertyEditorComponent new.
	nameEditor headingLevel: 4.
	notesEditor := InPlacePropertyEditorComponent new.
	notesEditor
		beTextArea;
		headingLevel: 4
			
