accessing
availableInstructionsTypes
	"Returns the types of instructions available for a bot's programmable task"
	
	^ ExperimentBotInstruction subclasses collect: [ :subclass | subclass prototype ]			