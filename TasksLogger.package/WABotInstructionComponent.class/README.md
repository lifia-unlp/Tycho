I am the visual component that allows the user to configure an instruction of a programmable task.

I know the bot instruction under configuration.
I allow the user to change the description or any specific property of the bot instruction.

Public API and Key Messages

- save
- cancel
- (for bonus points) how to create instances.

   WABotInstructionComponent on: anExperimentBotInstruction.
 
Internal Representation and Key Implementation Points.

	Instance Variables
		instruction:				<ExperimentBotInstruction> Bot instruction under configuration
		originalInstruction:	<ExperimentBotInstruction> Copy of the bot instruction to reset the changes if the user cancels the operation

    Implementation Points