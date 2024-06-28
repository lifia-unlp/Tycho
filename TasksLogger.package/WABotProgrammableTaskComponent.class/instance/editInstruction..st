callbacks
editInstruction: aBotInstruction
	"Call the component that allows the bot designer to configure the given bot instruction"
			
	self call: (WABotInstructionComponent on: aBotInstruction)