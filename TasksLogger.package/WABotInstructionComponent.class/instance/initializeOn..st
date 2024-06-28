initialization
initializeOn: anExperimentBotInstruction
			
	instruction := anExperimentBotInstruction.
	originalInstruction := anExperimentBotInstruction veryDeepCopy.	
	"Initialize a child component (instance of WAExperimentValueComponent) for each specific property of the instruction"
	propEditors := Dictionary new.
	instruction properties do: [ :prop | 
		propEditors at: prop put: (WAExperimentValueComponent on: (instruction perform: prop)) ]
	