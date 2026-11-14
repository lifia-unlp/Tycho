callbacks
editInstruction: aBotInstruction
	"Call the component that allows the bot designer to configure the given bot instruction"
			
	(aBotInstruction class = BotScriptInstruction)
		ifFalse: [ self call: (WABotInstructionComponent on: aBotInstruction) ] 
		ifTrue: [ self call: (WABotScriptInstructionComponent on: aBotInstruction)  ]
	