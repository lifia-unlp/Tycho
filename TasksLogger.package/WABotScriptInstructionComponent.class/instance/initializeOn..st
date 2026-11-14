initialization
initializeOn: anExperimentBotInstruction

	super initializeOn: anExperimentBotInstruction.
	
	"The JavaScript code does not require a generic value editor"
	propEditors removeKey: #code ifAbsent: [].